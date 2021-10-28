import 'dart:math' as math;

// Find the longest substring with distinct chars.
void main() {
  print(findLongestSubstring(''));
  print(findLongestSubstring('rithmschool'));
  print(findLongestSubstring('thisisawesome'));
  print(findLongestSubstring('thecatinthehat'));
  print(findLongestSubstring('bbbbbb'));
  print(findLongestSubstring('longestsubstring'));
  print(findLongestSubstring('thisishowwedoit'));

  print(findLongestSubstring1(''));
  print(findLongestSubstring1('rithmschool'));
  print(findLongestSubstring1('thisisawesome'));
  print(findLongestSubstring1('thecatinthehat'));
  print(findLongestSubstring1('bbbbbb'));
  print(findLongestSubstring1('longestsubstring'));
  print(findLongestSubstring1('thisishowwedoit'));
}

int findLongestSubstring1(String str) {
  if (str.length <= 1) return str.length;

  int start = 0;
  int maxLength = 0;
  // Will store the indexes where char occured
  Map<String, int> seen = {};

  for (int i = 0; i < str.length; i++) {
    if (seen[str[i]] != null) {
      start = math.max(start, seen[str[i]]!);
    }

    maxLength = math.max(maxLength, i - start + 1);

    seen[str[i]] = i + 1;
  }

  return maxLength;
}

int findLongestSubstring(String str) {
  if (str.length <= 1) return str.length;
  int start = 0;
  int next = 1;
  int moveTo = 0;
  // Int in map is for index of array element
  Map<String, int> freqLocMap = {str[0]: 0};

  while (next < str.length) {
    if (freqLocMap[str[next]] == null || freqLocMap[str[next]]! < moveTo) {
      freqLocMap[str[next]] = next++;
    } else {
      if (freqLocMap[str[next]]! > moveTo) moveTo = freqLocMap[str[next]]!;
      while (start <= moveTo && next < str.length) {
        if (freqLocMap[str[next]] != null) {
          if (freqLocMap[str[next]]! > moveTo) moveTo = freqLocMap[str[next]]!;
        }
        freqLocMap[str[next]] = next;

        next++;
        start++;
      }
    }
  }

  return next - start;
}
