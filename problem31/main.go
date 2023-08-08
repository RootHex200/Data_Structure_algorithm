//(Div. 2 - A) - Maximum GCD
package main

import "fmt"

func main() {
	var t int
	fmt.Scan(&t)

	for t>0{
		var n int
		fmt.Scan(&n)
		fmt.Println(n/2)
		t--
	}
}