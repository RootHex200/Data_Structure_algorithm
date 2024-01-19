package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)


func main() {
	scanner:=bufio.NewScanner(os.Stdin)
	// scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t:=scanner.Text()

	line:=strings.Split(t," ")

	m,_:=strconv.Atoi(line[0])
	n,_:=strconv.Atoi(line[1])
	a,_:=strconv.Atoi(line[2])

	height:=math.Ceil(float64(m)/float64(a));
	width:=math.Ceil(float64(n)/float64(a));
	fmt.Println(uint64(height*width))
}