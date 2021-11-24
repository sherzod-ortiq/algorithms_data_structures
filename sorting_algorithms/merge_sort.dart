import 'dart:math';

// Merge sort, we assume that two arrays are sorted.
void main() {
  // List<int> arr1 = [1, 3, 5, 7];
  // List<int> arr2 = [2, 4, 6, 8, 9];
  // print(mergeArrs(arr1, arr2));
  // print(mergeArrs([99], arr2));

  // List<int> arr = [14, 4, 6, 1, 9, 54, 7, 3, 0];
  // print(mergeSort(arr));

  Random rng = Random();
  List<int> randList = List.generate(100000, (_) => rng.nextInt(100000));
  Stopwatch stopwatch1 = Stopwatch()..start();
  mergeSort(randList);
  print('mergeSort() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();
}

List<int> mergeSort(List<int> arr) {
  if (arr.length > 1) {
    List<int> arr1 = mergeSort(arr.sublist(0, arr.length ~/ 2));
    List<int> arr2 = mergeSort(arr.sublist(arr.length ~/ 2));
    return mergeArrs(arr1, arr2);
  } else {
    return arr;
  }
}

List<int> mergeArrs(List<int> arr1, List<int> arr2) {
  List<int> arr = [];
  int i = 0;
  int j = 0;

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      arr.add(arr1[i]);
      i++;
    } else {
      arr.add(arr2[j]);
      j++;
    }
  }

  if (i < arr1.length) arr = [...arr, ...arr1.sublist(i)];
  if (j < arr2.length) arr = [...arr, ...arr2.sublist(j)];

  return arr;
}
