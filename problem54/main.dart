
void main(List<String> args) {
  var nums = [1,2,3,4,5,6];
  rotate(nums, 11);
  // print(nums);
}

void rotate(List<int> nums, int k) {
  if(nums.length==1){
    return;
  }
  if(k==0){
    return;
  }
  if(nums.length<k){
  reverse(0, nums.length-1, nums);
  reverse(0, ((k%nums.length)-1), nums);
  reverse((k%nums.length), nums.length-1, nums)  ;
  return;
  }
  reverse(0, nums.length-1, nums);
  reverse(0, k-1, nums);
  reverse(k, nums.length-1, nums);
}

void reverse(start,end,nums){
  int left=start;
  int right=end;
  while(left<right){
    var tmp=nums[left];
    nums[left]=nums[right];
    nums[right]=tmp;

    left++;
    right--;
  }
}
