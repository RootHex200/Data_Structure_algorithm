

//[2,3,4,5,6,7]] 10 [6,4]
//o(n) -->o(n)---o(n2)
// [-3,5,10,11]
void main(List<String> args) {
  print(getSumv3([3, 4, 5, 11], 7));
}

List getSumv1(List num, int target) {
  for (int i = 0; i < num.length - 1; i++) {
    for (int j = i + 1; j < num.length; j++) {
      if (num[i] + num[j] == target) {
        return [num[i], num[j]];
      }
    }
  }
  return [];
}

//o(n long n)
List getSumv2(List num, int target) {
  num.sort();
  int firstValue = 0;
  int lastValue = num.length - 1;

  while (firstValue < lastValue) {
    if (num[firstValue] + num[lastValue] > target) {
      lastValue--;
    } else if (num[firstValue] + num[lastValue] < target) {
      firstValue++;
    } else {
      return [num[firstValue], num[lastValue]];
    }
  }
  return [];
}

//o(n)
List getSumv3(List<int> num, int target) {
  Map<int, int> customValue = {}; 
  for (int i = 0; i < num.length; i++) {
    int otherNumber = target - num[i];
    customValue[otherNumber] = otherNumber;
    int rr = customValue[otherNumber] ?? 0;
    if (rr + num[i] == target) {
      return [customValue[otherNumber], num[i]];
    }
  }
  return [];
}
