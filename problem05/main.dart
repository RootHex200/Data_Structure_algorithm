void main(List<String> args) {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];//[0,1,]
  print(removeDuplicates(nums));
  print(nums);
}

int removeDuplicates(List<int> nums) {
  int newindex = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[newindex]) {
      newindex++;
      nums[newindex] = nums[i];
    }
  }
  return newindex+1;
}

