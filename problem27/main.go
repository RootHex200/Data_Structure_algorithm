//bismillahir rahmanir rohoim

//sum of round nummber (div4 A)

package main

import "fmt"

func main() {
	var t int
	fmt.Scan(&t)
	
	for t>0{
		
		var n int
		fmt.Scan(&n)
		x := 1
		arr := []int{}
		for n != 0 {
			x = x * 10
			p := n % x
			if p != 0 {
				arr = append(arr, p)
			}
			n = n - p
		}
		fmt.Println(len(arr))
		for i := 0; i < len(arr); i++ {
			fmt.Print(arr[i], " ")
		}
		fmt.Println()
		t--
	}
}
