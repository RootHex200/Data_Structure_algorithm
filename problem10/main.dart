

void main(List<String> args) {
  print(validateStackSequences([1,2,3,4,5], [4,3,5,1,2]));
  
}

bool validateStackSequences(List<int> pushed, List<int> popped) {
  List<int> nums=[];
  int checkvalueindex=0;
  for(int i=0;i<popped.length;i++){
    nums.add(pushed[i]);
    while(nums.isNotEmpty&&checkvalueindex<pushed.length&&nums.last==popped[checkvalueindex]){
      nums.removeLast();
      checkvalueindex++;
    }
  }
  return checkvalueindex==pushed.length;
}