void main(List<String> args) {
  Queue queue = Queue();
  queue.dequeue();
  queue.enqueue(20);
  queue.enqueue(230);
  queue.enqueue(30);
  queue.enqueue(50);
  queue.enqueue(60);
  queue.enqueue(60);
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
}

class Queue {
  int _front = -1;
  int _rear = -1;
  List queueList = List.filled(5, null, growable: true);
  void enqueue(int value) {
    if (_rear == queueList.length - 1) {
      print("Overflow");
    } else if (_rear == -1 && _front == -1) {
      _rear = _front = 0;
      queueList[_rear] = value;
      print("Item in added: $value");
    } else {
      _rear++;
      queueList[_rear] = value;
      print("Item in added: $value");
    }
  }

  void dequeue() {
    if (_front == -1 && _rear == -1) {
      print("Underflow");
    } else if (_front == _rear) {
      print('Deleted value: ${queueList[_front]}');
      _front = _rear = -1;
    } else {
     
      print('Deleted value: ${queueList[_front]}');
       _front++;
    }
  }
}
