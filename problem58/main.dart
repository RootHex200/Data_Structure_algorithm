//hindex
void main(List<String> args) {
  print(hIndex([3,0,6,1,5]));
}
int hIndex(List<int> citations) {
  citations.sort();
  for(int i=0;i<citations.length;i++){
    var tmep=citations.length-i;
    if(citations[i]>=tmep){
      return tmep;
    }
  }
  return 0;
}