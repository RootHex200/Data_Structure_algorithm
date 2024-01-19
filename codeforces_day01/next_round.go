package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"

	// "strconv"
	"strings"
)


func main() {
scanner:=bufio.NewScanner(os.Stdin)
	// scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t:=strings.Split(scanner.Text(), " ")
	scanner.Scan()
	
	data:=strings.Split(scanner.Text(), " ")
	count:=0;
	k,_:=strconv.Atoi(t[1])
	comapre,_:=strconv.Atoi(data[k-1])
	if(k>=1&&k<=len(data)){
		for i:=0;i<len(data);i++{
			operand,_:=strconv.Atoi(data[i])
			if(operand>=comapre && operand!=0){
				count++
			}
		}
	}
	fmt.Println(count)
}