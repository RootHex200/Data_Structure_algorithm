
import 'dart:math';

void main(List<String> args) {
  print(canJump([3,2,1,0,4]));
}


bool canJump(List<int> nums) {
  int reach=0;
  for(int i=0;i<nums.length;i++){
    if(reach<i){
      return false;
    }
    if(reach==nums.length-1){
      return true;
    }
    reach=max(reach, i+nums[i]);
  }
  return true;
}