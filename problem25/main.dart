

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
      if (head == null) return null;
	  
	  // to return head node
      ListNode? node = head;
      ListNode? prev = null;
	  
      while(head != null){
          if (prev?.val != head.val){ 
              prev?.next = head;
           prev = head;
          }
            if (head.next == null){
                   prev?.next = null;
               }
          head = head.next;
      } 
      return node;
  }
}