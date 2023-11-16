void main(List<String> args) {
  // Stackqueue stackqueue=Stackqueue();
  // stackqueue.enqueue(20);
  // stackqueue.enqueue(30);
  // stackqueue.enqueue(40);
  // stackqueue.dequeue();
  // // print(stackqueue.enqueuestack.elementList);
  // stackqueue.dequeue();
  // stackqueue.dequeue(); 
  // stackqueue.enqueue(20);
  // stackqueue.dequeue();
  Priority priority=Priority();
  priority.insert(10);
    priority.insert(3);
  priority.printall();
}


class Priority{
  List list=[];
  //[1,2,5]
  //[1,2,5,5]
  void insert(var item){
    if(list.isEmpty){
      list.add(item);
    }else{
    list.add(null);
    for(int i=list.length-1;0<=i;i--){
      try{
      if(list[i]>item){
        list[i+1]=list[i];
        list[i]=item;
      }else{
        list[i+1]=item;
        break;
      }
      }catch (e){
        continue;
      }
    }
    }
  }

  void printall(){
    print(list);
  }
}


class Stackqueue{
  Stack enqueuestack=Stack();
  Stack dequeuestack=Stack();

  void enqueue(var item){
    enqueuestack.push(item);
  }

  void dequeue(){
    if(isallEmpty()==true){
      throw "not data found for dequeue";
    }else{
      while(!enqueuestack.isEmpty()){
        dequeuestack.push(enqueuestack.pop());
      }
      print("pop value:-${dequeuestack.pop()}");
      while(!dequeuestack.isEmpty()){
        enqueuestack.push(dequeuestack.pop());
      }
    }
  }

  bool isallEmpty(){
    if(enqueuestack.isEmpty()==true&&dequeuestack.isEmpty()==true){
      return true;
    }else{
      return false;
    }
  }
}

class Stack {
  List elementList = [];

  void push(var item) {
    elementList.add(item);
  }

  pop() {
    var result = elementList.removeLast();
    return result;
  }

  String peek() {
    return elementList.last;
  }

  bool isEmpty(){
    if(elementList.isEmpty){
      return true;
    }else{
      return false;
    }
  }
}