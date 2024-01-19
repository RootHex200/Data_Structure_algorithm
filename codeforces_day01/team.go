package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	// "strings"
)


func main() {
	scanner:=bufio.NewScanner(os.Stdin)
	// scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_:=strconv.Atoi(scanner.Text())
	count:=0;
	for t>0{
		scanner.Scan();
		
		line:=strings.Split(scanner.Text(), " ")
		
		if(line[0]=="1" &&line[1]=="1"){
			count=count+1;
		}else if(line[0]=="1"&&line[2]=="1"){
			count=count+1;
		}else if(line[1]=="1"&&line[2]=="1"){
			count=count+1
		}
		
		t--;
	}
	fmt.Println(count)
}