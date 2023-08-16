//GR 9 - A - Sign Flipping

package main

import (
	"fmt"
	"math"
)

func main() {
	var t int
	fmt.Scan(&t)

	for t>0{
		var numbers []int

		var n int
		fmt.Scan(&n)
		for i:=0;i<n;i++{
			var item int
			fmt.Scan(&item)
			numbers = append(numbers, item)
		}
		for i:=0;i<len(numbers);i++{
			cs:=int64(math.Abs(float64(numbers[i])))
			if(i%2==0){
				fmt.Printf("%d ",-cs)
			}else{
				fmt.Printf("%d ",cs)
			}
		}
		fmt.Println()
		t--
	}

}