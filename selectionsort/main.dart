void main(List<String> args) {
  List num = [20, 38, 0, -1, 60, 30];
  print(SelectionSort(num));
}

List SelectionSort(List num) {
  for (int i = 0; i < num.length; i++) {
    int min = i;
    for (int j = i + 1; j < num.length; j++) {
      if (num[j] < num[min]) {
        min = j;
      }
    }
    int temp = num[i];
    num[i] = num[min];
    num[min] = temp;
  }
  return num;
}
