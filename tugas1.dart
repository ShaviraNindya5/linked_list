class DNode<T> {
  T? nodeValue;
  DNode<T>? prev;
  DNode<T>? next;

  DNode.withValue(T item) {
    nodeValue = item;
    next = null;
    prev = null;
  }
}

class DoubleLinkedList<T> {
  DNode<T>? head;

  // Method untuk menambahkan node di depan
  void insertFront(T data) {
    DNode<T> newNode = DNode.withValue(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  // Method untuk menambahkan node di belakang
  void insertBack(T data) {
    DNode<T> newNode = DNode.withValue(data);
    if (head == null) {
      head = newNode;
    } else {
      DNode<T>? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
      newNode.prev = temp;
    }
  }

  // Method 1: Menambahkan node SEBELUM node tertentu
  void tambahNode_Sebelum(DNode<T> newNode, DNode<T> target) {
    if (target.prev == null) {
      // Target adalah head, maka jadikan newNode sebagai head
      newNode.next = target;
      target.prev = newNode;
      newNode.prev = null;
      head = newNode;
    } else {
      DNode<T>? before = target.prev;
      before!.next = newNode;
      newNode.prev = before;
      newNode.next = target;
      target.prev = newNode;
    }
  }

  // Method untuk mencetak list maju
  void printForward() {
    DNode<T>? current = head;
    print("List (maju):");
    while (current != null) {
      print(current.nodeValue);
      current = current.next;
    }
  }
}
