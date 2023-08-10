/*
	Div. 3 - A) - Required Remainde

	p/x=y
	or,-y=p*x
	k=p*x+y



	p*x+y <=n
	p*x <=n-y
	p<=(n-y)/x
*/

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
		x,_:=strconv.Atoi(scanner.Text())
		scanner.Scan()
		y,_:=strconv.Atoi(scanner.Text())
		scanner.Scan()
		n,_:=strconv.Atoi(scanner.Text())
		p:=(n-y)/x
		k:=p*x+y
		fmt.Println(k)
		t--
	}
}