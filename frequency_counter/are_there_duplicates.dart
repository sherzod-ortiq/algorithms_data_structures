// Function for checking whether there are duplictes in variable number of arguments.
// Dynamic type list is used as function argument.
void main() {
  print(areThereDuplicates([1, 2, 3]));
  print(areThereDuplicates([1, 2, 2]));
  print(areThereDuplicates(['a', 'b', 'c', 'a']));
  print(areThereDuplicates([34, 24, 45, 67, 3]));
}

bool? areThereDuplicates([List<dynamic> args = const []]) {
  if (args.length <= 1) return false;
  Map<dynamic, int> freqMap = {};

  for (dynamic arg in args) {
    if (freqMap[arg] == null) {
      freqMap[arg] = 1;
    } else {
      return true;
    }
  }
  return false;
}
