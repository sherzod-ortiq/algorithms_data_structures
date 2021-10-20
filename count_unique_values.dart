// Count unique values in sorted array of integers
void main() {
  Stopwatch stopwatch1 = Stopwatch()..start();
  print(countUniqueValues1([]));
  print(countUniqueValues1([1]));
  print(countUniqueValues1([1, 2, 3, 4, 5]));
  print(countUniqueValues1([1, 2, 3, 3, 4, 5]));
  print(countUniqueValues1([1, 1, 1, 1, 1, 2]));
  print(countUniqueValues1([1, 2, 3, 4, 4, 4, 7, 7, 12, 12, 13]));
  print(countUniqueValues1([-2, -1, -1, 0, 1]));
  print(countUniqueValues1([1, 2, 3]));
  print('countUniqueValues1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  Stopwatch stopwatch2 = Stopwatch()..start();
  print(countUniqueValues2([]));
  print(countUniqueValues2([1]));
  print(countUniqueValues2([1, 2, 3, 4, 5]));
  print(countUniqueValues2([1, 2, 3, 3, 4, 5]));
  print(countUniqueValues2([1, 1, 1, 1, 1, 2]));
  print(countUniqueValues2([1, 2, 3, 4, 4, 4, 7, 7, 12, 12, 13]));
  print(countUniqueValues2([-2, -1, -1, 0, 1]));
  print(countUniqueValues2([1, 2, 3]));
  print('countUniqueValues2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();
}

int countUniqueValues2(List<int> arr) {
  if (arr.isEmpty) return 0;
  if (arr[0] == arr.last) return 1;

  int point1 = 0;
  int point2 = 1;

  while (point2 < arr.length) {
    if (arr[point2 - 1] == arr[point2]) {
    } else {
      arr[++point1] = arr[point2];
    }
    point2++;
  }
  return point1 + 1;
}

// This approach is better than the second one
int countUniqueValues1(List<int> arr) {
  if (arr.isEmpty) return 0;
  int start = 0;
  int end = arr.length - 1;
  int uniqueCount = 0;
  if (arr[start] == arr[end]) {
    return 1;
  }

  while (start <= end) {
    if (arr[start] == arr[end]) {
      return ++uniqueCount;
    }

    int start1 = start;
    int end1 = end;

    while (arr[start1] == arr[start1 + 1] && start1 < end) {
      start1++;
    }
    if (arr[start1] != arr[start1 + 1] && start1 < end1) uniqueCount++;

    while (arr[end1] == arr[end1 - 1] && start1 < end1) {
      end1--;
    }
    if (arr[end1 - 1] != arr[end1] && start1 < end1) uniqueCount++;

    start = start1 == start ? start + 1 : start1 + 1;
    end = end1 == end ? end - 1 : end1 - 1;
  }
  return uniqueCount;
}
