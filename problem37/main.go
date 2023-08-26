//(Div. 3 - A) - Three Pairwise Maximums

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner:=bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_:=strconv.Atoi(scanner.Text())
	for t>0{
		var result int=-1
		scanner.Scan()
		n,_:=strconv.Atoi(scanner.Text())
		scanner.Scan()
		m,_:=strconv.Atoi(scanner.Text())

		a1:=make([]int, n)
		a2:=make([]int, m)
		for i:=0;i<n;i++{
			scanner.Scan()
			a1[i], _= strconv.Atoi(scanner.Text())
		} 
		for i:=0;i<m;i++{
			scanner.Scan()
			a2[i], _= strconv.Atoi(scanner.Text())
		} 


		for i:=0;i<n;i++{
			for j:=0;j<m;j++{
				if(a1[i]==a2[j]){
					result = a1[i]
					break
				}
			}
			if(result!=-1){
				break
			}
		}
		if(result==-1){
			fmt.Println("NO")
		}else
		{
			fmt.Println("YES")
			fmt.Println(1,result)
		}

		t--
	}
}