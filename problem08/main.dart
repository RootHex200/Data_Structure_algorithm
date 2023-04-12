
//1287. Element Appearing More Than 25% In Sorted Array
void main(List<String> args) {
  print(findSpecialInteger([1, 2, 2, 6, 6, 6, 6, 7, 10]));
}

int findSpecialInteger(List<int> arr) {
  int check = (arr.length / 4).floor();
  Map<int, int> num = {};
  for (int i = 0; i < arr.length; i++) {
    if (num.containsKey(arr[i])) {
      num[arr[i]] = num[arr[i]]! + 1;
      if (num[arr[i]]! > check) {
        return arr[i];
      }
    } else {
      num[arr[i]] = 1;
    }
  }
  return arr[0];
}
