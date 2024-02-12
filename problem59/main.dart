
//45. Jump Game II

import 'dart:math';

void main(List<String> args) {
  print(jump([2,3,1,1,4]));
}

int jump(List<int> nums) {
  int jump=0;
  int last=0;
  int reach=0;
  for(int i=0;i<nums.length-1;i++){
    reach=max(reach, nums[i]+i);
    if(i==last){
      last=reach;
      jump++;
    }
  
  }
  return jump;
}