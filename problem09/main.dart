//2554. Maximum Number of Integers to Choose From a Range I

void main(List<String> args) {
  maxCount([1, 6, 5], 5, 6);
}

int maxCount(List<int> banned, int n, int maxSum) {
  int check = 0;
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (banned.contains(i) == false) {
      print(sum);
      print(sum + i);
      if ((sum + i) <= maxSum) {
        check++;
        sum += i;
      }
    }
  }
  return check;
}
