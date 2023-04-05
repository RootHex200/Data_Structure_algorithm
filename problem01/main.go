package main

import (
	"fmt"
	"sort"
)

func main()  {
	fmt.Println(getSumv1([]int{7,2,11,15},9))
}

func getSumv1(num []int,target int)[]int{
	for i:=0;i<len(num);i++{
		for j:=i+1;j<len(num);j++{
			if num[i]+num[j]==target{
				return []int{num[i],num[j]}
			}
		}
	}

	return make([]int, 0)
}

func getSumv2(num []int,target int)[]int{
	sort.Ints(num)
	firstValue:=0
	lastValue:=len(num)-1
	for firstValue<lastValue{
		if num[firstValue]+num[lastValue]==target{
			return []int{num[firstValue],num[lastValue]}
		}else if num[firstValue]+num[lastValue]>target{
			lastValue--
		}else{
			firstValue++
		}
	}
	return make([]int, 0)
}

func getSumv3(num []int,target int)[]int{
	m:=make(map[int]int)
	for i:=0;i<len(num);i++{
		otherValue:=target-num[i]
		m[otherValue]=otherValue
		if(m[otherValue]+num[i]==target){
			return []int{otherValue,num[i]}
		}


	}
	
	return make([]int, 0)
}