// 

void main(List<String> args) {
  removeStarsv1("leet**cod*e");
}

String removeStarsv1(String s) {
  List<String> str = s.split('');
  for (int i = 0; i < str.length; i++) {
    if (str[i] == "*") {
      str.removeAt(i - 1);
      str.removeAt(i - 1);
      i = (i - 2);
    }
  }
  print(str.join());
  return s;
}

String removeStarsv2(String s) {
  List<String> str = [];
  for (int i = 0; i < s.length; i++) {
    if (s[i] == "*") {
      str.removeLast();
    } else {
      str.add(s[i]);
    }
  }
  return str.join();
}
