import 'dart:math';

// Insertion sort
void main() {
  // List<int> arr1 = [5, 3, 9, -1];
  // print(insertionSort(arr1));
  // print(insertionSort2(arr1));

  Random rng = Random();
  List<int> randList = List.generate(100000, (_) => rng.nextInt(100000));
  Stopwatch stopwatch1 = Stopwatch()..start();
  insertionSort2(randList);
  print('insertionSort2() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();
}

List<int> insertionSort2(List<int> arr) {
  if (arr.length <= 1) return arr;
  arr = arr.toList();

  for (int i = 1; i < arr.length; i++) {
    int currentVal = arr[i];
    int j = i - 1;
    for (j; j >= 0 && arr[j] > currentVal; j--) {
      arr[j + 1] = arr[j];
    }
    arr[j + 1] = currentVal;
  }
  return arr;
}

List<int> insertionSort(List<int> arr) {
  if (arr.length <= 1) return arr;
  arr = arr.toList();

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < arr[i - 1]) {
      int currIndex = i;
      for (int j = i - 1; j >= 0; j--) {
        if (arr[i] < arr[j]) {
          currIndex = j;
        }
      }
      int temp = arr[i];
      arr.removeAt(i);
      arr.insert(currIndex, temp);
    }
  }
  return arr;
}
