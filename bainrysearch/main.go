package main

import "fmt"

func main(){
	num:=[]int{1,2,3,34,5,45,50,55,200}
	result:=Bainry_Search(num,200)
	fmt.Println(result)
}
func Bainry_Search(num []int ,target int)(string){
	start:=0;
	end:=len(num)-1
	for start<=end{
		mid:=(start+end)/2
		if(num[mid]==target){
			return fmt.Sprintf("Item found in %v location",mid)
		}else if(num[mid]>target){
			end=mid-1
		}else{
			start=mid+1
		}
	}
	return "Item not found";
}