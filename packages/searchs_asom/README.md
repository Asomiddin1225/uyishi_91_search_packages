## searchs
searchs is a Dart package that provides implementations for various search algorithms, including Binary Search, Linear Search, and Jump Search. This package is useful for anyone looking to efficiently find elements within a list of data

## features
- Binary Search: Efficiently searches a sorted list.
- Linear Search: Sequentially searches through a list.
- Jump Search: Searches a sorted list using a fixed step size.


## installation

Add the following to your ``` pubspec.yaml``` file:
```yaml 
dependencies:
  searchs: ^1.0.0

```
```sh
flutter pub get
```
## getting started
To use this package, ensure that the Dart SDK is installed on your machine. For more detailed information, refer to the Dart documentation and setup guides.

## usage
To use this package, import it into your Dart file and create an instance of the Searchs class to access the search algorithms.

```dart
import 'utils/search_algorithms.dart';

void main() {
  final search = Searchs();
  final List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int target = 5;

  // Binary Search
  int binaryIndex = search.binarySearch(data, target);
  print('Binary Search index: $binaryIndex');

  // Linear Search
  int linearIndex = search.linearSearch(data, target);
  print('Linear Search index: $linearIndex');

  // Jump Search
  int jumpIndex = search.jumpSearch(data, target);
  print('Jump Search index: $jumpIndex');
}

```

For more detailed examples and usage scenarios, refer to the /example folder.
 
## api

binarySearch
```dart
int binarySearch(List<int> list, int target)
```

Searches for a target value within a sorted list using the Binary Search algorithm and returns the index of the target if found.

## parameters:
- list: A sorted list of integers to search through.
- target: The integer value to search for.
## returns:
- The index of the target value in the list, or -1 if not found.

## linearSearch
```dart
int linearSearch(List<int> list, int target)
```
Searches for a target value within a list by checking each element sequentially and returns the index of the target if found


## parameters:
- list: A list of integers to search through.
- target: The integer value to search for.
## returns:
- The index of the target value in the list, or -1 if not found.
## license
This project is licensed under the MIT License - see the LICENSE file for details.