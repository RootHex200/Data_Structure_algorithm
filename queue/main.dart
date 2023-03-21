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
    } else {
      _rear++;
      queueList[_rear] = value;
      print("Item in added: $value");
    }
  }

  void dequeue() {
    if (_front == _rear) {
      print("Underflow");
    } else {
            _front++;
      print('Deleted value: ${queueList[_front]}');
    }
  }
}
