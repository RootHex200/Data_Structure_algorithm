
void main(List<String> args) {
  print(removeDuplicates([1,1,1,2,2,3]));
}
int removeDuplicates(List<int> nums) {

  for(int i=1;i<nums.length-1;i++){
    if(nums[i-1]==nums[i+1]){
      nums.removeAt(i);
      i--;
    }
  }

  return nums.length;
}

