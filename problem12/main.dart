
//155. Min Stack
class MinStack {
  int _top = -1;
  late List<int> stacklist;

  MinStack() {
    stacklist = [];
  }

  void push(int val) {
    stacklist.add(val);
  }

  void pop() {
    stacklist.removeLast();
  }

  int top() {
    return stacklist.last;
  }

  int getMin() {
    if (stacklist.isNotEmpty) {
      int min = stacklist[0];
      for (int i = 1; i < stacklist.length; i++) {
        if (stacklist[i] < min) {
          min = stacklist[i];
        }
      }
      return min;
    }
    return -1;
  }
}
