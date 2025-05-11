import 'tugas1.dart';

void main() {
  DoubleLinkedList<int> dll = DoubleLinkedList<int>();

  dll.insertBack(10);
  dll.insertBack(20);
  dll.insertBack(30);

  print("Sebelum disisipkan:");
  dll.printForward();

  // Buat node baru 15 dan sisipkan sebelum node dengan nilai 20
  DNode<int> newNode = DNode.withValue(15);
  dll.tambahNode_Sebelum(newNode, dll.head!.next!); // 20 adalah node kedua

  print("\nSetelah disisipkan 15 sebelum 20:");
  dll.printForward();
}
