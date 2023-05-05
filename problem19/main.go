package main

import "fmt"


func main(){

	fmt.Println(plusOne([]int{1,2,9}))
}

func plusOne(digits []int)[]int{

	carry:=1;

	for i:=len(digits)-1;i>=0;i--{
		if(digits[i]+carry==10){
			carry=1
			digits[i]=0
		}else{
			
			digits[i]=digits[i]+carry
			carry=0
		}
	}
	if(carry==1){
		pos := 0

		// create a new slice with the new element
		newSlice := []int{1}
		
		// insert the new element into the slice
		digits = append(digits[:pos], append(newSlice, digits[pos:]...)...)
	}

	return digits
}