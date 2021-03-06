// is palindrome?
void main() {
  print(isPalindrome('qaq'));
  print(isPalindrome('awesome'));
  print(isPalindrome('foobar'));
  print(isPalindrome('tacocat'));
  print(isPalindrome('amanaplanacanalpanama'));
  print(isPalindrome('amanaplanacanalpandemonium'));

  print('\n');

  print(isPalindrome('qaq'));
  print(isPalindrome('awesome'));
  print(isPalindrome('foobar'));
  print(isPalindrome('tacocat'));
  print(isPalindrome('amanaplanacanalpanama'));
  print(isPalindrome('amanaplanacanalpandemonium'));
}

bool isPalindrome1(String str) {
  if (str.length <= 1) return true;
  if (str[0] == str[1]) return true;
  if (str[0] == str[str.length - 1])
    return isPalindrome(str.substring(1, str.length - 1));
  return false;
}

bool isPalindrome(String str) {
  if (str.length == 0) return true;
  bool help(int index, String subStr) {
    if (subStr.length == 1) return subStr[0] == str[index] ? true : false;

    return subStr[subStr.length - 1] == str[index] &&
        help(index + 1, subStr.substring(0, subStr.length - 1));
  }

  return help(0, str);
}
