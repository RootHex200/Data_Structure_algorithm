

void main(List<String> args) {
  List num=[1,2,3,34,5,45,50,55,200];
 print(Bainary_search(num, 200));
}

String Bainary_search(List number,int target){
  int start=0;
  int end=number.length-1;
  
  while(start<=end){
    int mid=((start+end)/2).floor();
    if(number[mid]==target){
      return "Item found in $mid location";
    }else if(number[mid]>target){
      end=mid-1;
    }else if(number[mid]<target){
      start=mid+1;
    }
  }
  return "Item not found";
}