
import 'package:searchs_asom/searchs_asom.dart';
import 'package:test/test.dart';


void main() {
  final search = SearchsAsom();
  final List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  group('Searchs', () {
    test("binarySearch element indeksini to'g'ri topadi", () {
      expect(search.binarySearch(data, 5), 4);  // 0-based index
      expect(search.binarySearch(data, 1), 0);
      expect(search.binarySearch(data, 10), 9);
      expect(search.binarySearch(data, 11), -1);
    });

    test("linearSearch element indeksini to'g'ri topadi", () {
      expect(search.linearSearch(data, 5), 4);
      expect(search.linearSearch(data, 1), 0);
      expect(search.linearSearch(data, 10), 9);
      expect(search.linearSearch(data, 11), -1);
    });

    test("jumpSearch element indeksini to'g'ri topadi", () {
      expect(search.jumpSearch(data, 5), 4);
      expect(search.jumpSearch(data, 1), 0);
      expect(search.jumpSearch(data, 10), 9);
      expect(search.jumpSearch(data, 11), -1);
    });
  });
}
