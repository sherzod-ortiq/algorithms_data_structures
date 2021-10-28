void main() {
  print(sumRange(4));
  // countDown(5);
  // countDownNotRecur(5);
}

int sumRange(int num) {
  if (num == 1) return 1;
  return num + sumRange(num - 1);
}

void countDown(int num) {
  if (num <= 0) {
    print('All done!');
    return;
  }
  print(num);
  num--;
  countDown(num);
}

void countDownNotRecur(int num) {
  for (num; num > 0; num--) {
    print(num);
  }
  print('All done!');
}
