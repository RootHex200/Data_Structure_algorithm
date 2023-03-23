package main

import "fmt"

func main()  {
	circularQueue:=CircularQueue{[5]int{},-1,-1}
	circularQueue.enqueue(20);
	circularQueue.enqueue(30);
	circularQueue.enqueue(40);
	circularQueue.enqueue(50);
	fmt.Println(circularQueue.queueList);
	circularQueue.dequeue();
	circularQueue.dequeue();
	circularQueue.dequeue();
	circularQueue.enqueue(60);
	circularQueue.enqueue(70);
	circularQueue.enqueue(80);
	fmt.Println(circularQueue.queueList);
}

type CircularQueue struct {
	queueList [5]int
	rare     int
	front    int
}

func (q *CircularQueue) enqueue(value int) {
	if ((q.rare+1)%len(q.queueList)==q.front) {
		fmt.Println("Overflow")
	}else if(q.rare==-1 && q.front==-1){
		q.rare=0;
		q.front=0
		q.queueList[q.rare] = value
		fmt.Printf("Item is added %v\n", value)
	}else {
		q.rare=(q.rare+1)%len(q.queueList)
		q.queueList[q.rare] = value
		fmt.Printf("Item is added %v\n", value)
	}
}

func (q *CircularQueue) dequeue(){
	if(q.rare==-1 &&q.front==-1){
		fmt.Println("Underflow")
	}else if(q.front==q.rare){
		fmt.Printf("Item is Deleted: %v\n",q.queueList[q.front])
		q.rare=-1
		q.front=-1
	}else{
		fmt.Printf("Item is Deleted: %v\n",q.queueList[q.front])
		q.front=(q.front+1)%len(q.queueList)
	}
}