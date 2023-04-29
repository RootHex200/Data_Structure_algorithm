//8. String to Integer (atoi)

import 'dart:convert';

void main(List<String> args) {
  // myAtoi("42");
  // myAtoi("   -42");
  myAtoi("with words 2323");
}

int myAtoi(String s) {
  List<String> letters =
      List.generate(26, (index) => String.fromCharCode(index + 65).toLowerCase());

  List<String> numList = [
    "-",
    "+",
    "1",
    '2',
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
  ];
  if (s.isEmpty) {
    return 0;
  }

  String newnum = "";
  String checkvalue = s.trim();
  for (int j = 0; j < letters.length; j++) {
    if (checkvalue[0].toLowerCase() == letters[j]) {
      
      return 0;
    }
  }
  for (int i = 0; i < checkvalue.length; i++) {
    if (numList.contains(checkvalue[i])) {
      newnum += checkvalue[i];
    }
  }
  print(newnum);
  if (int.parse(newnum) >= 2147483647 || int.parse(newnum) <= -2147483648) {
    return 0;
  }
  return int.parse(newnum);
}
