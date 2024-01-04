

//15. 3Sum

void main(List<String> args) {
  print(threeSum([-1,0,1,2,-1,-4]));
  print(threeSum([0,1,1]));
  print(threeSum([-2,0,0,2,2]));
}
 threeSum(List<int> list){
  list.sort();
  var resultList=[];
  for(int i=0;i<list.length-2;i++){
    
    var left=i+1;
    var right=list.length-1;
    if(i > 0 && list[i] == list[i-1]){
      continue;
    }
          
    while(left<right){
      int sum=list[i]+list[left]+list[right];
      if(sum>0){
        right --;
      }
      if(sum<0){
        left++;
      }
      if(sum==0){
        var temp=[];
        temp.add(list[i]);
        temp.add(list[left]);
        temp.add(list[right]);
        resultList.add(temp);
        left ++;
        right --;
        while(left<list.length&& list[left]==list[left-1]){
          left++;
        }
        while(right>i &&list[right]==list[right+1]){
          right --;
        }
      }
    }
  }

  return resultList;
}