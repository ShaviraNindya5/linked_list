class Dnode<T> {
  T? nodeValue;
  Dnode? prev, next;

  Dnode (this.nodeValue) {
    next = null; 
    prev = null;
  }
}

class DoubleLinkedList {
  Dnode? head;

  bool isEmpty() {
    return head == null;
  }

  void insertBeforeHead(dynamic data) {
    Dnode newNode = Dnode(data);
    if (isEmpty()) {
      head = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  void insertTailNode(dynamic data) {
    Dnode newNode = Dnode(data);
    if (isEmpty()) {
      head = newNode;
    } else {
      Dnode? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }

      temp.next = newNode;
      newNode.prev = temp;
    }
  }

  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Dnode? delete = head;
        head = head!.next;
        head!.prev = null;
        delete!.next = null;
      } else {
        head = null;
      }
    }
  }

  void deleteEnd() {
    Dnode? temp;
    if (!isEmpty()) {
      if (head!.next != null) {
        temp = head;
        while (temp!.next!.next != null) {
          temp = temp.next;
        }
        temp.next!.prev = null;
        temp.next = null;
      } else {
        head = null;
      }
    }
  }

  void printList(Dnode? node) {
    Dnode? tail;
    tail = null;
    print("Traversal in Forward Direction : ");
    while (node != null) {
      print("${node.nodeValue}");
      tail = node;
      node = node.next;
    }
    print("");
    print("Traversal in Reverse Direction: ");
  while (tail != null) {
    print("${tail.nodeValue} ");
    tail = tail.prev;
    }
  print("");
  }
}


