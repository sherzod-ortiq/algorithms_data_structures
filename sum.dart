void main() {
  final stopwatch1 = Stopwatch()..start();
  print(sumIt(10000000));
  print('sumIt() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  final stopwatch2 = Stopwatch()..start();
  print(sumItSmart(10000000));
  print('sumItSmart() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();
}

int sumIt(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }

  return sum;
}

double sumItSmart(int n) {
  return n * (n + 1) / 2;
}
