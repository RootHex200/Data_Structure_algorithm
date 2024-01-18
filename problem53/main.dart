



void main(List<String> args) {
  print(majorityElement([2,2,1,1,1,2,2]));
}

//0(n) and 0(n)
int majorityElement(List<int> nums) {
  int max=0;
  int key=0;
  Map<int,int> result={};
  for(int i=0;i<nums.length;i++){
      if(result.containsKey(nums[i])){
          result[nums[i]]=result[nums[i]]!+1;
      }else{
          result[nums[i]]=1;
      }
  }
  for(int value in result.keys){
    if(result[value]!>max){
      max=result[value]!;
      key=value;
    }
  }
  return key;
}