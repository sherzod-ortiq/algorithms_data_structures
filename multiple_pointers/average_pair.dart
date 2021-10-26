// Find out whether there is a pair of numbers an average of which equals to tarAvg
void main() {
  print(averagePair([1, 2, 3], 2.5));
  print(averagePair([1, 3, 3, 5, 6, 7, 10, 12, 19], 8));
  print(averagePair([-1, 0, 3, 4, 5, 6], 4.1));
  print(averagePair([], 4.0));
  print(averagePair([3], 4.0));
}

bool averagePair(List<int> arr, double tarAvg) {
  if (arr.length == 0) return false;
  if (arr.length == 1) return arr[0] == tarAvg;

  int start = 0;
  int end = arr.length - 1;

  while (start < end) {
    double avg = (arr[start] + arr[end]) / 2;
    if (avg == tarAvg) return true;
    (avg > tarAvg) ? end-- : start++;
  }

  return false;
}
