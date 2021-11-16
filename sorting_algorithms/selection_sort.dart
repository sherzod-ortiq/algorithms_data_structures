// Selection sort
void main() {
  List<int> arr1 = [4, 6, 2, 6, -1];
  print(selectionSort(arr1));
  print(arr1);
}

List<int> selectionSort(List<int> arr) {
  if (arr.length <= 1) return arr;
  arr = arr.toList();

  for (int i = 0; i < arr.length; i++) {
    int minNumIndex = i;
    for (int j = i; j < arr.length - 1; j++) {
      if (arr[j + 1] < arr[minNumIndex]) {
        minNumIndex = j + 1;
      }
    }
    if (minNumIndex != i) {
      int temp = arr[minNumIndex];
      arr[minNumIndex] = arr[i];
      arr[i] = temp;
    }
  }
  return arr;
}
