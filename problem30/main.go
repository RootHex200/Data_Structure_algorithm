//(Div. 2 - A) - Berland Poker

package main

import "fmt"

func main() {
	var t int
	fmt.Scan(&t)
	for t>0{
		var n,m,k int
		fmt.Scan(&n,&m,&k)
		x:=n/k
		if(x>=m){
			fmt.Println(m)
		}else{
			max:=(m-x)/(k-1)
			if((m-x)%(k-1)!=0){
				max++
			}
			fmt.Println(x-max)
		}
		t--
	}
}