import 'latihan1.dart';

void main() {
  SingleLinkedList<int> sll = SingleLinkedList<int>();

  sll.insertFront(10);
  sll.insertFront(20);
  sll.insertFront(30);

  print("Linked List setelah insertFront:");
  sll.printList();

  sll.insertBack(5);
  sll.insertBack(1);

  print("Linked List setelah insertBack:");
  sll.printList();

  sll.deleteFront();

  print("Linked List setelah deleteFront:");
  sll.printList();

  sll.deleteEnd();

  print("Linked List setelah deleteEnd:");
  sll.printList();

  sll.deleteMiddle(10);

  print("Linked List setelah deleteMiddle (hapus 10):");
  sll.printList();
}
