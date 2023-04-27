//82. Remove Duplicates from Sorted List II

class ListNode {
  int val;
  var next;
  ListNode([this.val = 0, this.next = null]);
  @override
  String toString() => "Node(value:$val,next:$next)";
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    var list = getAllElement(head);

    return addElementWithouDuplicateValue(list);
  }

  List<int> getAllElement(head) {
    List<int> newList = [];
    var listnode = head;
    while (true) {
      newList.add(listnode.val);
      if (listnode.next == null) {
        break;
      } else {
        listnode = listnode.next;
      }
    }

    return getUnRepeatedElements(newList);
  }

  ListNode? addElementWithouDuplicateValue(List<int> list) {
    list.sort();
    ListNode? newnode = ListNode();
    var testnode = newnode;

    for (int i = 0; i < list.length; i++) {
      while (true) {
        if (testnode.next == null) {
          testnode.next = ListNode(list[i]);
          break;
        } else {
          testnode = testnode.next;
        }
      }
    }
    return newnode.next;
  }

  List<int> getUnRepeatedElements(List lst) {
    var uniqueLst = lst.toSet().toList();
    var repeatedElements = <int>[];
    for (var element in uniqueLst) {
      if (lst.where((e) => e == element).length == 1) {
        repeatedElements.add(element);
      }
    }
    return repeatedElements;
  }
}

void main(List<String> args) {
  ListNode l1 = ListNode(
      1, ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4))))));
  print(Solution().deleteDuplicates(l1));
}
