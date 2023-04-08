void main(List<String> args) {
  print(getParentheses("{}{}{}{}{}{(([[]]))]"));
}
//valid Parentheses
bool getParentheses(String value) {
  String d1 = "()";
  String d2 = "{}";
  String d3 = "[]";
  while (true) {
    print(value.length);
    if (value.isNotEmpty) {
      if (value.contains(d1)) {
        value = value.replaceAll(d1, "");
        print(value);
        print("value1");
      } else if (value.contains(d2)) {
        value = value.replaceAll(d2, "");
        print(value);
        print("value2");
      } else if (value.contains(d3)) {
        value = value.replaceAll(d3, "");
        print(value);
        print("value3");
      } else {
        print("herer");
        return false;
      }
    } else {
      break;
    }
  }
  return true;
}
