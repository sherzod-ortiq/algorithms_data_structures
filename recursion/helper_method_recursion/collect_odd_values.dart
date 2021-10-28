// Collect odd values of the array

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];
  print(collectOddVals(arr));
  // print(arr);
}

List<int> collectOddVals(List<int> arr) {
  List<int> oddArr = [];

  collectOddValsHelp(List<int> arr) {
    if (arr.length == 0) return;
    if (arr.last.isOdd) oddArr.add(arr.last);
    collectOddValsHelp(arr.sublist(0, arr.length - 1));
  }

  collectOddValsHelp(arr);

  return oddArr;
}
