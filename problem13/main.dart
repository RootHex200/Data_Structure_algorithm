

//7. Reverse Integer
void main(List<String> args) {
  print(reverse(1534236469));
}

int reverse(int x) {
  var oparator = "";
  var reslt = "";
  if (x.toString()[0] == "-") {
    oparator = "-";
  }

  for (int i = x.toString().length - 1; 0 <= i; i--) {
    if (x.toString()[i] != "-") {
      reslt = reslt + x.toString()[i];
    }
  }
  if (int.parse(oparator + reslt) >= 2147483647 ||
      int.parse(oparator + reslt) <= -2147483648) {
    return 0;
  }
  return int.parse(oparator + reslt);
}
