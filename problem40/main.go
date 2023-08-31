//(Div. 2 - A) - Suborrays

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
		scanner.Scan()
		n,_:=strconv.Atoi(scanner.Text())
		for i:=1;i<=n;i++{
			fmt.Printf("%d ",i)
		}
		fmt.Println()
		t--
	}
}