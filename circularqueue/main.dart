void main(List<String> args) {
  CircularQueue circularQueue = CircularQueue();
  circularQueue.enqueue(20);
  circularQueue.enqueue(30);
  circularQueue.enqueue(40);
  circularQueue.enqueue(50);
  print(circularQueue.queueList);
  circularQueue.dequeue();
  circularQueue.dequeue();
  circularQueue.dequeue();
  circularQueue.enqueue(60);
  circularQueue.enqueue(70);
  circularQueue.enqueue(80);
  print(circularQueue.queueList);
}

class CircularQueue {
  int _front = -1;
  int _rare = -1;
  List queueList = List.filled(5, null, growable: true);
  void enqueue(int value) {
    if ((_rare + 1) % queueList.length == _front) {
      print('Overflow');
    } else if (_rare == -1 && _front == -1) {
      _rare = _front = 0;
      queueList[_rare] = value;
      print("Item is added:$value");
    } else {
      _rare = (_rare + 1) % queueList.length;
      queueList[_rare] = value;
      print("Item is added:$value");
    }
  }

  void dequeue() {
    if (_front == -1 && _rare == -1) {
      print("Underflow");
    } else if (_front == _rare) {
            print("Data is deleted: ${queueList[_front]}");
      _front = _rare = -1;
      
    } else {
      print("Data is deleted:${queueList[_front]}");
      _front = (_front + 1) % queueList.length;
    }
  }
}
