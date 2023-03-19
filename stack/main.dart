void main(List<String> args) {
  Stack stack = Stack();
  stack.push(20);
  stack.push(30);
  stack.push(50);
  stack.push(100);
  stack.push(120);
  stack.push(200);
  stack.peek();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.pop();
  stack.peek();
  stack.pop();
  stack.pop();
}

class Stack {
  int _top = -1;
  List stacklist = List.filled(5, null, growable: true);
  // List elementList = [];

  void push(int value) {
    if (_top == stacklist.length - 1) {
      print("overflow");
    } else {
      _top++;
      stacklist[_top] = value;
    }
    // elementList.add(value);
    // print("List of value:${elementList}");
  }

  void pop() {
    if (_top == -1) {
      print("Underflow");
    } else {
      print("Delete Item :${stacklist[_top]}");
      _top--;
    }
    // elementList.removeLast();
    // print("Value deleted and remaining list:${elementList}");
  }

  void peek() {
    if (_top == -1) {
      print("No item in List");
    } else {
      print("Item :${stacklist[_top]}");
    }
    // print("Lats value in list:${elementList.last}");
  }
}
