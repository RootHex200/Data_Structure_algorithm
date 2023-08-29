// (div 2 .A)-Rainbow Dash, Fluttershy and Chess Coloring
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
		fmt.Println((n/2)+1)
		t--
	}
}