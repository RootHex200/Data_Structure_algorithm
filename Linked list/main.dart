//make node

class Node {
  int? value;
  var next = null;
  Node({required this.value});
  @override
  String toString() => "Node(value:$value,next:$next)";
}

//2->3->4->

class LinkedList {
  Node node;
  LinkedList({required this.node});
  var count = 0;
  void GetvalueFromLinklist() {
    print(node.toString());
    while (true) {
      print(node.value);
      if (node.next != null) {
        node = node.next;
      } else {
        break;
      }
    }
  }

  void InsertValueAtLast(value) {
    var currentNode = node;
    var newnode = Node(value: value);

    while (true) {
      if (currentNode.next != null) {
        currentNode = currentNode.next;
      } else {
        currentNode.next = newnode;
        break;
      }
    }
  }

  void InsertValueAtFirst(value) {
    var newNode = Node(value: value);
    newNode.next = node;
    node = newNode;
  }

  void DeleteValueAtFirst() {
    node = node.next;
    print(node.toString());
  }

  void DeleteValueAtLast() {
    var currentNode = node;
    while (true) {
      if (currentNode.next != null) {
        if (currentNode.next.next == null) {
          currentNode.next = null;
          break;
        } else {
          currentNode = currentNode.next;
        }
      } else {
        break;
      }
    }
    print(node.toString());
  }
}

void main(List<String> args) {
  var head = Node(value: 2);
  LinkedList linkList = LinkedList(node: head);
  linkList.InsertValueAtLast(20);
  linkList.InsertValueAtLast(30);
  linkList.InsertValueAtLast(40);
  linkList.InsertValueAtLast(50);
  linkList.InsertValueAtFirst(1);
  linkList.InsertValueAtLast(30);
  linkList.InsertValueAtLast(40);
  linkList.InsertValueAtLast(50);
  linkList.DeleteValueAtFirst();
  linkList.DeleteValueAtFirst();
  linkList.DeleteValueAtFirst();
  linkList.DeleteValueAtLast();
  linkList.DeleteValueAtLast();
}
