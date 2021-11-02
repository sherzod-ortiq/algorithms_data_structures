// Product of array

void main() {
  List<int> arr = [2, 2, 2, 10];
  List<int> arr2 = [1, 2, 3];
  List<int> arr3 = [1, 2, 3, 10];

  print(productOfArray(arr));
  print(productOfArray(arr2));
  print(productOfArray(arr3));

  print(arr);
  print(arr2);
  print(arr3);

  print('\n');

  print(productOfArray1(arr));
  print(productOfArray1(arr2));
  print(productOfArray1(arr3));

  print(arr);
  print(arr2);
  print(arr3);

  print('\n');

  print(productOfArray2(arr));
  print(productOfArray2(arr2));
  print(productOfArray2(arr3));

  print(arr);
  print(arr2);
  print(arr3);
}

int productOfArray2(List<int> arr) {
  if (arr.length == 0) return 0;
  if (arr.length == 1) return arr[0];
  return arr.last * productOfArray(arr.sublist(0, arr.length - 1));
}

int productOfArray1(List<int> arr) {
  if (arr.length == 0) return 0;
  if (arr.length == 1) return arr[0];
  return arr.last * productOfArray(arr.take(arr.length - 1).toList());
}

int productOfArray(List<int> arr) {
  if (arr.length == 1) return arr[0];
  int index = arr.length - 1;
  int help(int index) {
    if (index == 0) return arr[0];
    return arr[index] * help(index - 1);
  }

  return help(index);
}
