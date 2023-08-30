void main(List<String> args) {
  Queue queue = Queue(5);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);
  queue.enqueue(60);
  //  queue.enqueue(70);
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.enqueue(10);
  print(queue.list);
}

class Queue {
  List? list;
  Queue(var length) {
    list = List.filled(length, null);
  }
  int _tail = -1;
  int _front = -1;
  void enqueue(var item) {
    if (isFull()) {
      print("overflow");
      return;
    } else if (isEmpty()) {
      _tail = 0;
      _front = 0;
    } else {
      _tail = ((_tail + 1) % list!.length);
    }
    list![_tail] = item;
  }

  dequeue() {
    if(isEmpty()){
      print("uderflow");
      return;
    }
    var deleteitem = list![_front];
    list![_front] = null;
    if (_front == _tail) {
      _front = -1;
      _tail = -1;
    } else {
      _front = (_front + 1) % list!.length;
    }
    return deleteitem;
  }

  bool isEmpty() {
    return _front == -1 && _tail == -1;
  }

  peek() {
    return list![0];
  }

  isFull() {
    return ((_tail + 1) % list!.length) == _front;
  }
}
