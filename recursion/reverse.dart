// Reverse string
void main() {
  print(reverse('Hello'));
  print(reverse('awesome')); // 'emosewa'
  print(reverse('rithmschool')); // 'loohcsmhtir'
}

String reverse(String str) {
  if (str.length == 0) return '';
  return str[str.length - 1] + reverse(str.substring(0, str.length - 1));
}
