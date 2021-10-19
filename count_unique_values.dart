void main() {
  Stopwatch stopwatch1 = Stopwatch()..start();
  print(countUniqueValues1([1, 2, 3, 4, 4, 4, 7, 7, 12, 12, 13]));
  print('countUniqueValues1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();
}

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
