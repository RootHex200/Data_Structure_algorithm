void main(List<String> args) {
  separation([7,1,3,9]);
}

void separation(List<int> num) {
  List<int> newNum = [];

  for (int i = 0; i < num.length; i++) {
    for (int j = 0; j < num[i].toString().length; j++) {
      newNum.add(int.parse(num[i].toString()[j]));
    }
  }
  print(newNum);
}
