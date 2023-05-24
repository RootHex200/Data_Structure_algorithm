void main(List<String> args) {
  print(mySqrt(10));
}

int mySqrt(int x) {
  int i = 1;
  while (i * i <= x) {
    i++;
  }
  return i - 1;
}
