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

  // Menambahkan node di depan
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

  // Menambahkan node di belakang
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

  // Menambahkan node sebelum target (pembacaan mundur)
  void tambahNode_SebelumBacaMundur(DNode<T> newNode, DNode<T> target) {
    // Temukan tail
    DNode<T>? tail = head;
    if (tail == null) return; // list kosong

    while (tail!.next != null) {
      tail = tail.next;
    }

    // Traversal mundur
    while (tail != null) {
      if (tail == target) {
        if (target.prev == null) {
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
        break;
      }
      tail = tail.prev;
    }
  }

  // Cetak list dari depan
  void printForward() {
    DNode<T>? current = head;
    print("List (maju):");
    while (current != null) {
      print(current.nodeValue);
      current = current.next;
    }
  }
}

