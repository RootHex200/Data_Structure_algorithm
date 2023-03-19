package main

import "fmt"

func main()  {
	list:=Stack{-1,[5]int{}}
	list.push(20)
	list.push(30)
	list.push(50)
	list.push(100)
	list.push(120)
	list.push(200)
	list.peek()
	list.pop()
	list.pop()
	list.pop()
	list.pop()
	list.peek()
	list.pop()
	list.pop()
}

type Stack struct{
	top int
	list [5]int
}

func (s *Stack)push(value int){
	if((len(s.list)-1)==s.top){
		fmt.Printf("Overflow\n")
	}else{
		s.top++;
		s.list[s.top]=value
	}
}
func (s *Stack) pop(){
	
	if(s.top==-1){
		fmt.Println("underflow")
	}else{
		fmt.Printf("Delete value %v\n",s.list[s.top])
		s.top--;
	}
}

func (s *Stack)peek(){
	if(s.top==-1){
		fmt.Println("No item in List")
	}else{
		fmt.Printf("value is %v\n",s.list[s.top])
	}
}