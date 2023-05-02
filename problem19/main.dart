void main(List<String> args) {
  print(plusOne([1, 2, 9]));
}

List<int> plusOne(List<int> digits) {
  int carry = 1;
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] + carry == 10) {
      carry = 1;
      digits[i] = 0;
    } else {
      digits[i] = digits[i] + carry;
      carry = 0;
    }
  }
  print(digits);
  if (carry == 1) {
    digits.insert(0, 1);
  }
  return digits;
}
