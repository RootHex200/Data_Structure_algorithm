import '../problem13/main.dart';

void main(List<String> args) {
  print(isPalindrome("race a car"));
}

  bool isPalindrome(String s) {
       bool res = true;
  var filtered = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  int start = 0;
  int end = filtered.length - 1;
  while (start <= end) {
    if (filtered[start] != filtered[end]) {
      return res = false;
    }
    start++;
    end--;
  }
  return res;
  }
