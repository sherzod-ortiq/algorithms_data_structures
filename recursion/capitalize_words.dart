// Capitalize words
void main() {
  // List<String> arr = ['Hello', 'Boom', 'join'];
  List<String> arr1 = ['i', 'am', 'learning', 'recursion'];
  print(capitalizeWords(arr1));
  print(arr1);
}

List<String> capitalizeWords(List<String> arr) {
  if (arr.length == 0) return [];
  String word = arr[0].toUpperCase();
  return [word, ...capitalizeWords(arr.sublist(1))];
}
