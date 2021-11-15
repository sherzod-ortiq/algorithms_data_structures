// Binary search, will be working only with integers
// Time complexity is O(log n) - logarithmic
void main() {
  print(binarySearch([1, 2, 4, 5, 6], 12));
  print(binarySearch([1, 2, 4, 5, 6], -12));
  print(binarySearch([1], 1));
}

int binarySearch(List<int> arr, int target) {
  if (arr.length == 1) return (arr[0] == target) ? 0 : -1;
  int start = 0;
  int end = arr.length - 1;
  int middle = ((end + start) / 2).truncate();

  while (arr[middle] != target && start <= end) {
    (arr[middle] > target) ? end = middle - 1 : start = middle + 1;
    middle = ((end + start) / 2).truncate();
  }
  return (arr[middle] == target) ? middle : -1;
}
