import 'dart:math';

class Searchs {
  int binarySearch(List<int> list, int target) {
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (list[mid] == target) {
        return mid;
      } else if (list[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return -1;
  }

  int linearSearch(List<int> list, int target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        return i;
      }
    }

    return -1;
  }

  int jumpSearch(List<int> list, int target) {
    int n = list.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    while (list[min(step, n) - 1] < target) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        return -1;
      }
    }

    for (int i = prev; i < min(step, n); i++) {
      if (list[i] == target) {
        return i;
      }
    }

    return -1;
  }
}
