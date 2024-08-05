import 'package:flutter/material.dart';
import 'package:uyishi_91/widgets/search_algorithms.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<int> _data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final TextEditingController _controller = TextEditingController();
  String _result = '';
  String _time = '';

  void _performSearch(String method) {
    final int? target = int.tryParse(_controller.text);
    if (target == null) {
      setState(() {
        _result = 'Iltimos, son kiriting.';
        _time = '';
      });
      return;
    }

    final startTime = DateTime.now();
    int index = -1;

    switch (method) {
      case 'binary':
        index = binarySearch(_data, target);
        break;
      case 'linear':
        index = linearSearch(_data, target);
        break;
      case 'jump':
        index = jumpSearch(_data, target);
        break;
      default:
        index = -1;
    }

    final endTime = DateTime.now();
    setState(() {
      _result =
          index != -1 ? 'Element topildi: ${index} indx' : 'Element topilmadi';
      _time =
          'Vaqt: ${endTime.difference(startTime).inMicroseconds} mikrosoniya';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qidiruv Algoritmlari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Qidirilayotgan element'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _performSearch('binary'),
                  child: Text('Binary Search'),
                ),
                ElevatedButton(
                  onPressed: () => _performSearch('linear'),
                  child: Text('Linear Search'),
                ),
                ElevatedButton(
                  onPressed: () => _performSearch('jump'),
                  child: Text('Jump Search'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(_result),
            Text(_time),
          ],
        ),
      ),
    );
  }
}
