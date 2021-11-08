// Capitalize first, will assume that each string in the array starts with letter
void main() {
  List<String> arr = ['hello', 'boom', 'groom', 'hoom'];
  // capitalizeFirst(arr);
  // print(arr);

  print(capitalizeFirst2(arr));
  print(arr);

  // print(capitalizeFirst3(arr));
  // print(arr);
}

// Does not modify the original array
List<String> capitalizeFirst3(List<String> arr) {
  List<String> help(List<String> arrHelp) {
    if (arrHelp.length == 0) return [];
    arrHelp[0] = arrHelp[0][0].toUpperCase() + arrHelp[0].substring(1);
    return [arrHelp[0], ...help(arrHelp.sublist(1))];
  }

  return help(arr.toList());
}

// Does not modify original array
List<String> capitalizeFirst2(List<String> arr) {
  if (arr.length == 0) return [];
  String str = arr[0][0].toUpperCase() + arr[0].substring(1);
  return [str, ...capitalizeFirst2(arr.sublist(1))];
}

// Modifies original array
void capitalizeFirst(List<String> arr) {
  List<String> help(List<String> arrHelp) {
    if (arrHelp.length == 0) return [];
    arrHelp[0] = arrHelp[0][0].toUpperCase() + arrHelp[0].substring(1);
    return [arrHelp[0], ...help(arrHelp.sublist(1))];
  }

  arr.replaceRange(0, arr.length, help(arr.toList()));
}
