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

	if(t>2&&t%2==0){
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}
}