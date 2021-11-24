import 'dart:math';

// Bubble sort
void main() {
  // print(bubbleSort([4, 5, 1, 0, -2]));
  // print(bubbleSort([10, 2, 1, 2, 0, 1]));
  // print(bubbleSort([]));
  // print(bubbleSort([1]));

  // print(bubbleSort2([4, 5, 1, 0, -2]));
  // print(bubbleSort2([10, 2, 1, 2, 0, 1]));
  // print(bubbleSort2([]));
  // print(bubbleSort2([1]));

  // print(bubbleSort3([4, 5, 1, 0, -2]));
  // print(bubbleSort3([10, 2, 1, 2, 0, 1]));
  // print(bubbleSort3([]));
  // print(bubbleSort3([1]));

  Random rng = Random();
  List<int> randList = List.generate(100000, (_) => rng.nextInt(100000));
  Stopwatch stopwatch1 = Stopwatch()..start();
  bubbleSort3(randList);
  print('bubbleSort3() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();
}

// Optimized
List<int> bubbleSort3(List<int> arr) {
  if (arr.length <= 1) return arr;

  arr = arr.toList();
  bool noSwap;
  for (int i = arr.length; i > 0; i--) {
    noSwap = true;
    for (int j = 0; j < i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        noSwap = false;
      }
    }
    if (noSwap) break;
  }
  return arr;
}

List<int> bubbleSort2(List<int> arr) {
  if (arr.length <= 1) return arr;

  arr = arr.toList();
  for (int i = arr.length; i > 0; i--) {
    for (int j = 0; j < i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

List<int> bubbleSort(List<int> arr) {
  if (arr.length <= 1) return arr;

  arr = arr.toList();
  int sortedNum = arr.length - 1;
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < sortedNum; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
    sortedNum--;
  }
  return arr;
}
