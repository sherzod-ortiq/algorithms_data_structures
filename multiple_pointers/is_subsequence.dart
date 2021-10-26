// Check whether the characters from the first string reappear in the second array without order change.
void main() {
  print(isSubsequence('hello', 'hello world'));
  print(isSubsequence('sing', 'sting'));
  print(isSubsequence('abc', 'abracadabra'));
  print(isSubsequence('abc', 'acb'));
  print(isSubsequence('c', 'ddagggbfff'));
  print(isSubsequence('cfg', 'ddaggcgbdffff'));
  print(isSubsequence('cf', 'cf'));

  print('\n/////////////////////////////////////\n');

  print(isSubsequence1('hello', 'hello world'));
  print(isSubsequence1('sing', 'sting'));
  print(isSubsequence1('abc', 'abracadabra'));
  print(isSubsequence1('abc', 'acb'));
  print(isSubsequence1('c', 'ddagggbfff'));
  print(isSubsequence1('cfg', 'ddaggcgbdffff'));
  print(isSubsequence1('cf', 'cf'));
}

bool isSubsequence1(String str1, String str2) {
  if (str1.length > str2.length || str1.length == 0) return false;

  int str1Ptr = 0;
  int str2Ptr = 0;

  while (str2Ptr < str2.length) {
    if (str1[str1Ptr] == str2[str2Ptr]) str1Ptr++;
    if (str1Ptr == str1.length) return true;
    str2Ptr++;
  }
  return false;
}

bool isSubsequence(String str1, String str2) {
  if (str1.length > str2.length || str1.length == 0) return false;
  if (str1.length == 1 && str2.length == 1) return str1[0] == str2[0];

  int str1StPtr = 0;
  int str1EnPtr = str1.length - 1;
  int str2StPtr = 0;
  int str2EnPtr = str2.length - 1;

  while (str2StPtr <= str2EnPtr) {
    if (str2[str2StPtr] == str1[str1StPtr]) str1StPtr++;
    if (str2[str2EnPtr] == str1[str1EnPtr]) str1EnPtr--;
    str2StPtr++;
    str2EnPtr--;
    if (str1StPtr > str1EnPtr) return true;
  }

  return false;
}
