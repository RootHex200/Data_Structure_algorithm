//bismillahir rahmanir rohim

//(Div. 2 - A) - Odd Selection

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_ := strconv.Atoi(scanner.Text())

	for t>0{
		scanner.Scan()
		n,_ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		k,_ := strconv.Atoi(scanner.Text())
		event:=0
		odd:=0
		for i:=1;i<=n;i++{
			scanner.Scan()
			p,_ := strconv.Atoi(scanner.Text())
			if(p%2==0){
				event++
			}else{
				odd++
			}
		}
		if(odd==0){
			fmt.Println("No")
		}else{
			k--
			odd--
			for k>0{
				if(odd>=2 && k>=2){
					k-=2
					odd-=2
				}else if(event!=0){
					k--
					event--
				}else
				{
					break
				}
			}
			if(k!=0){
				fmt.Println("No")
			}else{
				fmt.Println("Yes")
			}
		}
		t--
	}
}

