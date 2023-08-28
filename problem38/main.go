
//(Div. 3 - A) - Remove Smallest

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	scanner:=bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_:=strconv.Atoi(scanner.Text())

	for t>0{
		scanner.Scan()
		n,_:=strconv.Atoi(scanner.Text())
		a1:=make([]int,n)
		for i:=0;i<n;i++{
			scanner.Scan()
			a1[i],_=strconv.Atoi(scanner.Text())
		}
		sort.Ints(a1)
		var result string=""
		if(len(a1)==1){
			result="YES"
		}else{
			for i := 1; i <len(a1); i++ {
				if(a1[i]-a1[i-1]>1){
					result="NO"
					break
				}else
				{
					result="YES"
				}
			}
		}
		fmt.Println(result)

		t--
	}
}