// Find the longest substring with distinct chars.
void main() {
  print(findLongestSubstring(''));
  print(findLongestSubstring('rithmschool'));
  print(findLongestSubstring('thisisawesome'));
  print(findLongestSubstring('thecatinthehat'));
  print(findLongestSubstring('bbbbbb'));
  print(findLongestSubstring('longestsubstring'));
  print(findLongestSubstring('thisishowwedoit'));
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
