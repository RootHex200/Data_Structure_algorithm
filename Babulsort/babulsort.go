
package main

import "fmt"

func main(){
	numbers:=[]int{1, 20, 11, -40, 30, 2, 3}
	result:=Babul_sort(numbers)
	fmt.Println(result)

}

func Babul_sort(numbers []int)([]int){
	for i:=0;i<len(numbers);i++{
		for j:=0;j<len(numbers)-1;j++{
			if(numbers[j]>numbers[j+1]){
				temp:=numbers[j]
				numbers[j]=numbers[j+1]
				numbers[j+1]=temp
			}
		}
	}
	return numbers
}