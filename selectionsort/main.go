package main

import "fmt"


func main()  {
	num:=[]int{20, 38, 0, -1, 60, 30}
	fmt.Println(SelectionSort(num))
}

func SelectionSort(num []int)[]int{
	for i:=0;i<len(num);i++{
		min:=i
		for j:=i+1;j<len(num);j++{
			if num[j]<num[min]{
				min=j
			}
		}
		temp:=num[i]
		num[i]=num[min]
		num[min]=temp
	}
	return num
}