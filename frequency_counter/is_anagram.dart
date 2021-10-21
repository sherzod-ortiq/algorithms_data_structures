// Check whether two strings are anagrams
void main() {
  Stopwatch stopwatch1 = Stopwatch()..start();
  print(isAnagram1('herl1ew', 'w1eehlrd'));
  print('isAnagram1() executed in ${stopwatch1.elapsed}');
  stopwatch1.stop();

  Stopwatch stopwatch2 = Stopwatch()..start();
  print(isAnagram2('herl1ew', 'w1eehlrd'));
  print('isAnagram2() executed in ${stopwatch2.elapsed}');
  stopwatch2.stop();
}

bool isAnagram2(String word1, String word2) {
  if (word1.length != word2.length) return false;
  Map<String, int> word1FreqMap = {};

  word1.runes.forEach((charInt) {
    String char = String.fromCharCode(charInt);
    word1FreqMap[char] == null
        ? word1FreqMap[char] = 1
        : word1FreqMap[char] = word1FreqMap[char]! + 1;
  });

  for (String char in word2.split('')) {
    if (word1FreqMap[char] == null || word1FreqMap[char] == 0) {
      return false;
    } else {
      word1FreqMap[char] = word1FreqMap[char]! - 1;
    }
  }

  return true;
}

bool isAnagram1(String word1, String word2) {
  if (word1.length != word2.length) return false;
  Map<String, int> word1FreqMap = {};
  Map<String, int> word2FreqMap = {};

  word1.runes.forEach((charInt) {
    String char = String.fromCharCode(charInt);
    word1FreqMap[char] == null
        ? word1FreqMap[char] = 1
        : word1FreqMap[char] = word1FreqMap[char]! + 1;
  });

  word2.runes.forEach((charInt) {
    String char = String.fromCharCode(charInt);
    word2FreqMap[char] == null
        ? word2FreqMap[char] = 1
        : word2FreqMap[char] = word2FreqMap[char]! + 1;
  });

  for (String key in word1FreqMap.keys) {
    if (word2FreqMap[key] != word1FreqMap[key]) return false;
  }

  return true;
}
