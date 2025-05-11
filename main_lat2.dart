import 'latihan2.dart';

void main() {
  LinkedList list = LinkedList();
  list.append(10);
  list.append(20);
  list.append(30);

  Node? found = list.findNode(20);
  if (found != null) {
    print("Node ditemukan dengan data: ${found.data}");
  } else {
    print("Node tidak ditemukan");
  }
}
