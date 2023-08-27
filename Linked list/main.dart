

void main(List<String> args) {
  LinkedList<int> list=LinkedList<int>();
  list.insertAtFirst(1);
  list.insertAtLast(2);
  list.insertAtLast(3);
  list.insertAtLast(4);
    list.insertAtLast(100);
    list.reverse();
    list.insertAtLast(200);
    list.insertAtFirst(200000);
    list.reverse();
    list.insertAtLast(200);
    list.printList();
  
  // list.printList();
  // // list.removeAtLast();
  // // list.removeAtLast();
  // // list.printList()
  // list.remove(1);
  // list.printList();
  // list.printList();
}

class Node<T>{
  final T data;
  var next;
  Node({required this.data,required this.next});
    @override
  String toString(){
    return "{Data:-$data and next:- $next}";
  }
}

class LinkedList<T>{

  Node<T>? _head;
  Node<T>? _tail;
  int count=0;
  void insertAtFirst(T item){
    var newnode=Node(data: item, next: null);
    if(_head==null){
        _head=newnode;
        _tail=newnode;
    }else{
      newnode.next=_head;
      _head=newnode;
    }
    count=count+1;
  }


  void insertAtLast(T item){
    var newnode=Node(data: item, next: null);

    if(_head==null&&_tail==null){
      _head=newnode;
      _tail=newnode;
    }else{
      _tail!.next=newnode;
      _tail=newnode;
    }
    count=count+1;
  }

  void reverse(){
    var currentnode=_head;
    var prev=null;
    var tmcount=0;
    while(currentnode!=null){
      var next=currentnode.next;
      currentnode.next=prev;
      if(tmcount==1){
        _tail=prev;
      }
      prev=currentnode;
      currentnode=next;
      tmcount=tmcount+1;
    }
    _head=prev;
  }

  void insertData(int index,T item){
    var newnode=Node(data: item, next: null);
    if(index==0){
      insertAtFirst(item);
    }else if(index==count){
      insertAtLast(item);
    }else if(index>count){
      throw ArgumentError("Index out of bounds");
      
    }else{
    var currentnode=_head;
    for(int i=0;i<index-1;i++){
      currentnode=currentnode!.next;
    }
    newnode.next=currentnode!.next;
    currentnode.next=newnode;
    count=count+1;
    }
  }


  void indexof(int item){
    int tmcount=0;
    var currentnode=_head;
    while(true){
      if(item==currentnode!.data){
          print(tmcount);
      }
      if(currentnode.next==null){
          break;
      }else{
        tmcount=tmcount+1;
        currentnode=currentnode.next;
      }
    }
  }

  void removeAtfirst(){
   if(_head!=null){
     _head=_head!.next;
   }
   count=count-1;
  }

  void removeAtLast(){
    var currentnode=_head;

    while(true){
      if(currentnode!.next.next==null){
        currentnode.next=null;
        break;
      }else{
        currentnode=currentnode.next;
      }
    }
    count=count-1;
    _tail=currentnode;
  }

  void remove(int index){
    if(index==0){
      removeAtfirst();
    }else if(index==count-1){
      removeAtLast();
    }else if(index>count){
      print("Error not found index");
    }
    else{
          var currentnode=_head;
    for(int i=0;i<index-1;i++){
      currentnode=currentnode!.next;
    }
    var tmp=currentnode!.next;
    currentnode.next=tmp.next;
    tmp.next=null;
    print(tmp);
    }
    count=count-1;
  }

  bool contain(int item){
    var currentnode=_head;
    bool check=false;
    while(true){
      if(currentnode!.next!=null){
        if(currentnode.data==item){
         check=true;
         break;
        }
      currentnode=currentnode.next;
      }else{
        break;
        
      }
    }
    return check;
  }


  void printList(){
    var tmp=_head;
    if(tmp==null){
      print("not found");
    }else{
    while (true){
      print(tmp!.data);
      if(tmp.next==null){
        break;
      }else{
        tmp=tmp.next;
      }
    }
    }
  }

}