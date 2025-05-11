class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  // Menambahkan node ke akhir linked list
  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  // Fungsi untuk mencari node berdasarkan data
  Node? findNode(int data) {
    Node? current = head;
    while (current != null) {
      if (current.data == data) {
        return current;
      }
      current = current.next;
    }
    return null; // Tidak ditemukan
  }
}
