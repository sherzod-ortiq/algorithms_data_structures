// implement power with recursion

void main() {
  print(power2(3, 3));
  // print(power(3, 0));
}

int power2(int base, int exponent) {
  if (exponent == 0) return 1;
  return base * power2(base, exponent - 1);
}

int power(int base, int exponent) {
  if (exponent == 0) return 1;
  int counter = exponent;
  int powerHelp() {
    if (counter == 1) return base;
    counter--;
    return base * powerHelp();
  }

  return powerHelp();
}
