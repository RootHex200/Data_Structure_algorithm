
//122. Best Time to Buy and Sell Stock
import 'dart:math';

void main(List<String> args) {
  print(maxProfit([7,6,4,3,1]));
}

int maxProfit(List<int> prices) {
  int profit=0;
  int buy=0;
  int sell=1;

  while(sell<prices.length){
    if(prices[buy]<prices[sell]){
      var calculate=prices[sell]-prices[buy];
      profit=max(calculate, profit);
    }else{
      buy=sell;
    }
    sell++;
  }
  return profit;
}