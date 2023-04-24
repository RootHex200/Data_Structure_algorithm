//35. Search Insert Position

void main(List<String> args) {
  searchInsert([1, 3, 5, 6], 7);
}

int searchInsert(List<int> nums, int target) {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    } else if (nums[i] > target) return i;
  }
  return nums.length;
}
