// Function takes array and a callback, calls callback on each value and returns on first callbac true return.

void main() {
  print(someRecursive([1, 2, 3, 4], isOdd));
  print(someRecursive([4, 6, 8, 9], isOdd));
  print(someRecursive([4, 6, 8], isOdd));
}

bool isOdd(int num) {
  return num % 2 != 0;
}

// We assume that the array will have at least one value
bool someRecursive(List<int> arr, Function isOdd) {
  if (arr.length == 1) return isOdd(arr[0]);
  if (arr.length == 2) return isOdd(arr[0]) || isOdd(arr[1]);
  if (!isOdd(arr[0]) && !isOdd(arr[arr.length - 1]))
    return someRecursive(arr.sublist(1, arr.length - 1), isOdd);
  return true;
}
