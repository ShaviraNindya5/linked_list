class Node<T> {
  T? nodeValue;
  Node<T>? next;

  // Constructor default
  Node() {
    nodeValue = null;
    next = null;
  }

  // Constructor dengan nilai item
  Node.withValue(T item) {
    nodeValue = item;
    next = null;
  }
}

class SingleLinkedList<T> {
  Node<T>? head = null;

  bool isEmpty() => head == null;

  // Menyisipkan data di depan list
  void insertFront(T data) {
    Node<T> newNode = Node.withValue(data); // Membuat node baru dengan nilai data
    newNode.next = head; // Menyambungkan node baru dengan head yang ada
    head = newNode; // Mengubah head untuk menunjuk ke node baru
  }

  // Menyisipkan data di belakang list
  void insertBack(T data) {
    Node<T> newNode = Node.withValue(data); // Membuat node baru dengan nilai data
    if (isEmpty()) {
      head = newNode; // Jika list kosong, node baru menjadi head
    } else {
      Node<T>? temp = head;
      while (temp?.next != null) {
        temp = temp?.next; // Mencari node terakhir
      }
      temp?.next = newNode; // Menyambungkan node baru ke node terakhir
    }
  }

  // Menghapus node pertama (head)
  void deleteFront() {
    if (!isEmpty()) {
      head = head?.next; // Mengubah head untuk menunjuk ke node kedua
    }
  }

  // Menghapus node terakhir
  void deleteEnd() {
    if (!isEmpty()) {
      if (head?.next == null) {
        head = null; // Jika hanya ada satu node, hapus head
      } else {
        Node<T>? temp = head;
        while (temp?.next?.next != null) {
          temp = temp?.next; // Mencari node kedua terakhir
        }
        temp?.next = null; // Menghapus node terakhir
      }
    }
  }

  // Menghapus node tertentu berdasarkan nilai
  void deleteMiddle(T value) {
    if (!isEmpty() && head?.next != null) {
      Node<T>? temp = head;
      while (temp?.next != null && temp?.next?.nodeValue != value) {
        temp = temp?.next;
      }
      if (temp?.next != null) {
        temp?.next = temp.next?.next; // Menghapus node yang ditemukan
      }
    }
  }

  // Mencetak seluruh nilai node
  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.nodeValue); // Mencetak nilai node
      current = current.next; // Berpindah ke node berikutnya
    }
  }
}
