void main(List<String> args) {
  var numbs = [1, 20, 11, -40, 30, 2, 3];
  var result = Babul_sort(numbs);
  print(result);


}
Babul_sort(number) {
    for (int i = 0; i < number.length; i++) {
      for (int j = 0; j < number.length - 1; j++) {
        if (number[j] > number[j + 1]) {
          var temp = number[j];
          number[j] = number[j + 1];
          number[j + 1] = temp;
        }
      }
    }
    return number;
  }
