package main

import "fmt"

func main() {
	queue:=Queue{[5]int{},-1,-1}
	queue.dequeue()
	queue.enqueue(20)
	queue.enqueue(230)
	queue.enqueue(30)
	queue.enqueue(50)
	queue.enqueue(60)
	queue.enqueue(60)
	queue.dequeue()
	queue.dequeue()
	queue.dequeue()
	queue.dequeue()
	queue.dequeue()
	queue.dequeue()
}

type Queue struct {
	queuList [5]int
	rare     int
	front    int
}

func (q *Queue) enqueue(value int) {
	if (q.rare == len(q.queuList)-1) {
		fmt.Println("Overflow")
	} else {
		q.rare++
		q.queuList[q.rare] = value
		fmt.Printf("Item is added %v\n", value)
	}
}

func (q *Queue) dequeue(){
	if(q.rare==q.front){
		fmt.Println("Underflow")
	}else{
		q.front++;
		fmt.Printf("Item is Deleted: %v\n",q.queuList[q.front])
	}
}
