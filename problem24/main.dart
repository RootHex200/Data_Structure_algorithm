void main(List<String> args) {
  climbStairs(5);
}

int climbStairs(int n) {
  if (n == 0 || n == 1 || n == 2 || n == 3) {
    return n;
  }
  int sum = 0;
  int left = 1;
  int right = 2;
  for (int i = 2; i < n; i++) {
    sum = left + right;
    left = right;
    right = sum;
  }
  return sum;
}
