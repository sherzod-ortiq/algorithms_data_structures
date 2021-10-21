// Find out whether digits of two positive integers have the same frequency

void main() {
  print(sameFrequency(7654, 5674));
}

bool sameFrequency(int num1, int num2) {
  List<String> num1Arr = num1.toString().split('');
  List<String> num2Arr = num2.toString().split('');

  if (num1Arr.length != num2Arr.length) return false;
  Map<String, int> freqMap1 = {};

  num1Arr.forEach((num) {
    freqMap1[num] =
        freqMap1[num] != null ? freqMap1[num] = freqMap1[num]! + 1 : 1;
  });

  for (String num in num2Arr) {
    if (freqMap1[num] == 0 || freqMap1[num] == null) return false;
    freqMap1[num] = freqMap1[num]! - 1;
  }

  return true;
}
