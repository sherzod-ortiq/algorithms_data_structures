// Collect odd values of the array

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 11, 12];
  print(collectOddVals(arr));
  print(arr);
}

List<int> collectOddVals(List<int> arr) {
  if (arr.length == 0) return [];
  return [
    ...[
      if (arr.last.isOdd) ...[arr.last]
    ],
    ...collectOddVals(arr.sublist(0, arr.length - 1))
  ];
}
