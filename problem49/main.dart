
//6. Zigzag Conversion
void main(List<String> args) {
  print(convert("AB", 1));
}

String convert(String s, int numRows) {

  if(numRows==1 || numRows>=s.length){
   return s;
  } 

  List<List> list=[];
  for(int i=0;i<numRows;i++){
    list.add([]);
  }
  
  int index=0;
  int step=0;
  String result="";
  for(int i=0;i<s.length;i++){
    list[index].add(s[i]);
    if(index==0){
      step=1;
    }
    else if(index==numRows-1){
      step=-1;
    }
    index=index+step;
  }
  for(int j=0;j<list.length;j++){
    result+=list[j].join();
  }
  return result;
}