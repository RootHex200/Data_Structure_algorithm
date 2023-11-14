

class Solution {
  double myPow(double x, int n) {
    
    double _inside(double x,int n){
      
      if(x==0) return 0;
      if(n==0) return 1;
      
      
      double result=_inside(x*x,(n/2).toInt());
      
      return n.isEven?result:x*result;
    }
    
    return _inside(n.isNegative?1/x:x,n);
  }
}