
//Round 91 (Div. 2 - A) - Three Indices

package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	t,_ := strconv.Atoi(scanner.Text())
	for t > 0 {
		scanner.Scan()
		n, _ := strconv.Atoi(scanner.Text())

		a := make([]int, n+1)
		for i := 1; i <= n; i++ {
			scanner.Scan()
			a[i], _ = strconv.Atoi(scanner.Text())
		}
		fmt.Println(a)

		result := -1
		for i := 2; i <= n-1; i++ {
			if a[i] > a[i-1] && a[i] > a[i+1] {
				result = i
				break
			}
		}

		if result != -1 {
			fmt.Println("YES")
			fmt.Println(result-1, result, result+1)
		} else {
			fmt.Println("NO")
		}
		t--
	}
}
