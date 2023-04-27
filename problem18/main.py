
##82. Remove Duplicates from Sorted List II
class ListNode:
    def __init__(self, val=None, next=None):
        self.val = val
        self.next = next

    def __str__(self):
        return f"Node(value:{self.val},next:{self.next})"


class Solution:
    def deleteDuplicates(self, head: ListNode) -> ListNode:
        print(head.val==None)
        if(head.val is not None):
            list = self.getAllElement(head)
            return self.addElementWithouDuplicateValue(list)
        else:
            return ListNode()

    def getAllElement(self, head):
        newList = []
        listnode = head
        while True:
            newList.append(listnode.val)
            if listnode.next is None:
                break
            else:
                listnode = listnode.next
        return sorted(self.get_repeated_elements(newList))

    def addElementWithouDuplicateValue(self, list):
        newnode = ListNode()
        testnode = newnode
        for i in range(len(list)):
            while True:
                if testnode.next is None:
                    testnode.next = ListNode(list[i])
                    break
                else:
                    testnode = testnode.next
        return newnode.next
    def unique_elements(self,lst):
        """
        Returns a list of unique elements from the input list.
        """
        return list(set(lst))
    def get_repeated_elements(self,lst):

        unique_lst =self.unique_elements(lst)
        repeated_elements = []
        for element in unique_lst:
            if lst.count(element) == 1:
                repeated_elements.append(element)
        return repeated_elements


if __name__ == '__main__':
    l1 = ListNode(
        2, ListNode(4, ListNode(3, ListNode(5, ListNode(6, ListNode(4))))))
    l3=ListNode()
    print(Solution().deleteDuplicates(l3))