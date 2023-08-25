// (Div. 3 - A) - Three Pairwise Maximums
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	scanner:=bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_:=strconv.Atoi(scanner.Text())

	for t>0{
		number := make([]int, 3)
		for i := 0; i <len(number); i++ {
			scanner.Scan()
			number[i], _ = strconv.Atoi(scanner.Text())
		}
		sort.Ints(number)
		if(number[1]==number[2]){
			fmt.Println("YES")
			fmt.Println(number[2],number[0],number[0])
		}else{
			fmt.Println("NO")
		}
		
		t--
	}
}