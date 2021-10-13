void main() {
  final stopwatch1 = Stopwatch()..start();
  print(countChars1(
      'Count it, Count it, Count it, Count it, Count it, Count it, Count it'));
  print('countChars1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  final stopwatch2 = Stopwatch()..start();
  print(countChars2(
      'Count it, Count it, Count it, Count it, Count it, Count it, Count it'));
  print('countChars2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();

  final stopwatch3 = Stopwatch()..start();
  print(countChars3(
      'Count it, Count it, Count it, Count it, Count it, Count it, Count it'));
  print('countChars3() executed in ${stopwatch3.elapsed}');
  stopwatch3.stop();
}

Map countChars3(String chars) {
  Map<String, int> count = {};

  chars.split('').forEach((char) {
    if (isAlphaNumeric(char)) {
      char = char.toLowerCase();
      count[char] == null ? count[char] = 1 : count[char] = count[char]! + 1;
    }
  });

  return count;
}

bool isAlphaNumeric(String char) {
  int code = char.codeUnitAt(0);
  // works faster that regex
  if (!(code > 47 && code < 58) && // numeric (0-9)
      !(code > 64 && code < 91) && // upper alpha (A-Z)
      !(code > 96 && code < 123)) {
    // lower alpha (a-z)
    return false;
  }

  return true;
}

Map countChars2(String chars) {
  Map<String, int> count = {};
  final RegExp letters = RegExp('[a-z0-9]');

  chars.toLowerCase().split('').forEach((char) {
    if (letters.hasMatch(char)) {
      count[char] == null ? count[char] = 1 : count[char] = count[char]! + 1;
    }
  });

  return count;
}

Map countChars1(String chars) {
  Map<String, int> count = {};
  final RegExp letters = RegExp('[a-z0-9]');

  for (int i = 0; i < chars.length; i++) {
    String char = chars[i].toLowerCase();

    if (letters.hasMatch(char)) {
      count[char] == null ? count[char] = 1 : count[char] = count[char]! + 1;
    }
  }

  return count;
}
