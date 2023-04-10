void main(List<String> args) {
  print(removeElement([0,1,2,2,3,0,4,2], 2));
}

int removeElement(List<int> nums, int val) {
  int newIndex = 0;
  for (int i = 0; i < nums.length; i++) {
    if (val != nums[i]) {
      nums[newIndex] = nums[i];
      newIndex++;
    }
  }
  print(nums);
  return newIndex;
}
