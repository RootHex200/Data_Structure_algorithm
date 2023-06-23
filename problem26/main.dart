
class Solution {
String addBinary(String a, String b) {
a = a.split('').reversed.join('');
b = b.split('').reversed.join('');

String result = "";
int count = 0;
int num = 0;
int  numA = 0;
int  numB = 0;
for(int i=0; i<a.length||i<b.length; i++){
  if(i+1>a.length){
    numA = 0;
  } else {
    numA = int.parse(a[i]);
  }
  if(i+1>b.length){
    numB = 0;
  } else {
    numB = int.parse(b[i]);
  }
  num = numA+numB;
  if(num>1&&count==0){
    result = result + "0".toString();
    count = 1;
  } else if(num>1&&count==1){
    result = result + "1".toString();
    count = 1;
  } else if(num==1&&count==0){
    result = result + "1".toString();
  } else if(num==1&&count==1){
    result = result + "0".toString();
  } else if(num==0&&count==0){
    result = result + "0".toString();
  } else if(num==0&&count==1){
    result = result + "1".toString();
    count = 0;
  } 
}

if(count==1){
  result = result + count.toString();
}
return result.split('').reversed.join('');
}

}