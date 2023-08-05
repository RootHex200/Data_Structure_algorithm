//(Div. 2 - A) - Sequence with Digits

package main

import (
	"fmt"
	"math"
)

func main() {
	
	var t int
	fmt.Scan(&t)
	for t>0{

		var n int
		fmt.Scan(&n)
		var k int
		fmt.Scan(&k)


		for i:=2;i<=k;i++{

			x:=9
			y:=0
			p:=n

			for(p!=0){
				x=int(math.Min(float64(x),float64(p%10)))
				
				y=int(math.Max(float64(y),float64(p%10)))
				p=p/10
			}
			if(x==0){
				break
			}
			n=n+(x*y)
		}
		fmt.Println(n)

		t--
	}
}