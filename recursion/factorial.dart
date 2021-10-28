void main() {
  print(fact(5));
}

int fact(int num) {
  if (num == 1) return 1;
  return num * fact(num - 1);
}
