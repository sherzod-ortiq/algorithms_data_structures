// Linear search, will be working only with integers
// Time complexity is O(n) - linear
void main() {
  print(linearSearch([2, 5, 6, 7], 10));
}

int linearSearch(List<int> arr, int elem) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == elem) return i;
  }
  return -1;
}
