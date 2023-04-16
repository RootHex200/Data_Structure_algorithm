
//2. Add Two Numbers

class ListNode {
  int val;
  var next;
  ListNode([this.val = 0, this.next = null]);
  @override
  String toString() => "Node(value:$val,next:$next)";
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode? listNode = ListNode();
  String value1 = ""; //
  String value2 = "";
  var c1 = l1;
  var c2 = l2;
  while (true) {
    value1 = c1!.val.toString() + value1;
    if (c1.next == null) {
      break;
    } else {
      c1 = c1.next;
    }
  }
  while (true){
    value2 = c2!.val.toString() + value2;
    if (c2.next == null) {
      break;
    } else {
      c2 = c2.next;
    }
  }
  var result = (int.parse(value1) + int.parse(value2)).toString();
  var tempnode = listNode;
  for (int i = result.length - 1; 0 <= i; i--) {
    ListNode newnode = ListNode(int.parse(result[i]));

    while (true) {
      if (tempnode.next == null) {
        tempnode.next = newnode;
        break;
      } else {
        tempnode = tempnode.next;
      }
    }
  }
  return listNode.next;
}

//[2,4,3]
void main(List<String> args) {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  print(addTwoNumbers(l1, l2));
}
