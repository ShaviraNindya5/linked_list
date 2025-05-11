import 'tugas2.dart';

void main() {
  DoubleLinkedList<int> dll = DoubleLinkedList<int>();

  dll.insertBack(10);
  dll.insertBack(20);
  dll.insertBack(30);

  print("Sebelum disisipkan:");
  dll.printForward();

  // Sisipkan sebelum node 20, tapi lewat traversal mundur
  DNode<int> newNode = DNode.withValue(15);
  dll.tambahNode_SebelumBacaMundur(newNode, dll.head!.next!); // target = node 20

  print("\nSetelah disisipkan 15 sebelum 20 (lewat pembacaan mundur):");
  dll.printForward();
}
