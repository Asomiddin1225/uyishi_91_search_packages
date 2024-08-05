import 'dart:core';
import 'package:searchs/searchs.dart';

void main() {
  final search = Searchs();
  final List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int target = 5;

  int binaryIndex = search.binarySearch(data, target);
  print('Binary Search:');
  if (binaryIndex != -1) {
    print('Element $target found at index $binaryIndex');
  } else {
    print('Element $target not found.');
  }

  int linearIndex = search.linearSearch(data, target);
  print('\nLinear Search:');
  if (linearIndex != -1) {
    print('Element $target found at index $linearIndex');
  } else {
    print('Element $target not found.');
  }

  int jumpIndex = search.jumpSearch(data, target);
  print('\nJump Search:');
  if (jumpIndex != -1) {
    print('Element $target found at index $jumpIndex');
  } else {
    print('Element $target not found.');
  }
}
