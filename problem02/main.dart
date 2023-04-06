void main(List<String> args) {
  getPrefix();
}

void getPrefix() {
  List<String> value = ["flower", "flow", "flight"];

  String s = value.first;
  String result = "";
  for (int i = 0; i < s.length; i++) {
    String prefix = result + s[i];
    print(prefix);
    if (value.any((element) {
      return !element.startsWith(prefix);
    })) {
    } else {
      print("false");
      result = prefix;
    }
  }
  print(result);
}
