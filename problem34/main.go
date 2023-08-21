//#655(Div.2-A)-Omkar and Completion

package main

import "fmt"

func main() {
	var t int
	fmt.Scan(&t)

	for t>0{
		var n int
		fmt.Scan(&n)

		for i:=0;i<n;i++{
			fmt.Printf("%d ",1)
		}
		fmt.Println()
		t--
	}
}