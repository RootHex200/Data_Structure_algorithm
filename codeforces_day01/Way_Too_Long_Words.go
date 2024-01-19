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
		word:=scanner.Text()
		if(len(word)>10){
			fistchar:=string(word[0]);
			lastchar:=string(word[len(word)-1])
			middel:=strconv.Itoa(len(word)-2)
			fmt.Println(fistchar+middel+lastchar)
			
		}else {
			fmt.Println(word)
		}
		t--
	}
}