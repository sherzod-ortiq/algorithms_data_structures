// Find first pair where the sum is 0

void main() {
  Stopwatch stopwatch1 = Stopwatch()..start();
  print(sumZero1(
      [-2, 0, 1, 2, 3, 5, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]));
  print('sumZero1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  Stopwatch stopwatch2 = Stopwatch()..start();
  print(sumZero2(
      [-2, 0, 1, 2, 3, 5, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]));
  print('sumZero2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();

  Stopwatch stopwatch3 = Stopwatch()..start();
  print(sumZero3(
      [-2, 0, 1, 2, 3, 5, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]));
  print('sumZero3() executed in ${stopwatch3.elapsed}');
  stopwatch3.stop();
}

List<int> sumZero3(List<int> sortedArray) {
  int start = 0;
  int end = sortedArray.length - 1;

  while (start != end) {
    int sum = sortedArray[start] + sortedArray[end];
    if (sum == 0) {
      return [sortedArray[start], sortedArray[end]];
    } else if (sum < 0) {
      start++;
    } else {
      end--;
    }
  }

  return [];
}

List<int> sumZero2(List<int> sortedArray) {
  int d = 1;
  for (int i = 0; i < sortedArray.length; i++) {
    for (int n = d; n < sortedArray.length; n++) {
      int intSum = sortedArray[i] + sortedArray[n];

      if (intSum == 0) return [sortedArray[i], sortedArray[n]];
      if (i < sortedArray.length - 2) {
        int nextSum = sortedArray[i] + sortedArray[n + 1];
        if ((intSum < 0 && nextSum < intSum)) break;
        if ((intSum > 0 && nextSum > intSum)) break;
      }
    }
    d++;
  }
  return [];
}

List<int> sumZero1(List<int> sortedArray) {
  int n = 1;
  for (int i = 0; i < sortedArray.length; i++) {
    for (n; n < sortedArray.length; n++) {
      if (sortedArray[i] + sortedArray[n] == 0)
        return [sortedArray[i], sortedArray[n]];
    }
    n++;
  }
  return [];
}
