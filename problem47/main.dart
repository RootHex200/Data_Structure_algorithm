
//16. 3Sum Closest

void main(List<String> args) {
  print(threeSumClosest([0,1,-1], 3));
}

threeSumClosest(List<int> nums, int target){

  nums.sort();

  var result=[];
  for(int i=0;i<nums.length-2;i++){

    int left=i+1;
    int right=nums.length-1;
    while(left<right){
      var sum=nums[i]+nums[left]+nums[right];

      if(sum >target){
        right --;
      }
      if(sum<target){
        left ++;
      }

      if(sum==target){
        return sum;
      }
      result.add(sum);
      
    }
  }
  return result.reduce((prev, curr) {
    return (curr -target).abs()<(prev-target).abs()?curr:prev;
  });

}