// Recursive range

main() {
  print(recursiveRange(0));
  print(recursiveRange(1));
  print(recursiveRange(2));
  print(recursiveRange(6));
  print(recursiveRange(10));
}

int recursiveRange(int num) {
  if (num == 0) return 0;
  return num + recursiveRange(num - 1);
}
