//12. Integer to Roman

void main(List<String> args) {
  print(intToRoman(2));
}

String intToRoman(int num) {
  String romanNumeral = "";
  while (num >= 1000) {
    romanNumeral += "M";
    num -= 1000;
  }
  while (num >= 900) {
    romanNumeral += "CM";
    num -= 900;
  }
  while (num >= 500) {
    romanNumeral += "D";
    num -= 500;
  }
  while (num >= 400) {
    romanNumeral += "CD";
    num -= 400;
  }
  while (num >= 100) {
    romanNumeral += "C";
    num -= 100;
  }
  while (num >= 90) {
    romanNumeral += "XC";
    num -= 90;
  }
  while (num >= 50) {
    romanNumeral += "L";
    num -= 50;
  }
  while (num >= 40) {
    romanNumeral += "XL";
    num -= 40;
  }
  while (num >= 10) {
    romanNumeral += "X";
    num -= 10;
  }
  while (num >= 9) {
    romanNumeral += "IX";
    num -= 9;
  }
  while (num >= 5) {
    romanNumeral += "V";
    num -= 5;
  }
  while (num >= 4) {
    romanNumeral += "IV";
    num -= 4;
  }
  while (num >= 1) {
    romanNumeral += "I";
    num -= 1;
  }

  return romanNumeral;
}
