// Naive string search
void main() {
  print(naiveStringSearch('Hello', ''));
  print(naiveStringSearch('lorie lored', 'lol'));
}

int naiveStringSearch(String str, String subStr) {
  if (str.length < subStr.length) return 0;
  if (subStr.length == 0) return 0;
  int subIn = 0;
  int matchCount = 0;

  for (int i = 0; i < str.length; i++) {
    if (subStr[subIn] == str[i]) {
      subIn++;
      if (subIn == subStr.length) {
        matchCount++;
        subIn = 0;
      }
    }
  }
  return matchCount;
}
