// Return the Nth number of Fibonacci sequence. We accept only positive integers
void main() {
  print(fib(1));
  print(fib(2));
  print(fib(3));
  print(fib(6));

  print('\n');

  print(fib(4));
  print(fib(10));
  print(fib(28));
  print(fib(35));

  print('\n');

  print(fib2(4));
  print(fib2(10));
  print(fib2(28));
  print(fib2(35));
}

int fib2(int n) {
  if (n <= 2) return 1;
  return fib(n - 1) + fib(n - 2);
}

int fib(int num) {
  if (num <= 2) return 1;

  int helpFib(int elmn1, int elmn2, int hNum) {
    if (hNum == num) return elmn1 + elmn2;
    return helpFib(elmn2, elmn1 + elmn2, hNum + 1);
  }

  return helpFib(1, 1, 3);
}
