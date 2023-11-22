void main() {
  SLinkedList sLinkedList = SLinkedList();
  sLinkedList.add(10);
  sLinkedList.add(20);
  sLinkedList.add(30);
  sLinkedList.add(40);
  sLinkedList.add(50);
  sLinkedList.add(60);
  // sLinkedList.findMiddle();
  sLinkedList.display();
}

class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class SLinkedList {
  Node? head;
  Node? tail;

  Node? prev;

  int count = 1;

  add(int data) {
    Node node = Node(data);

    if (head == null) {
      head = node;
    } else {
      tail?.next = node;
    }
    tail = node;
  }

  deleteAtLast() {
    Node? temp = head;

    while (temp?.next?.next != null) {
      temp = temp?.next;
    }
    temp?.next = null;
  }

  findMiddle() {
    Node? slow, fast;

    Node? temp = head;

    while (temp != null) {
      slow = temp.next;
      fast = temp.next?.next;

      if (fast!.next?.next != null) {
        temp = temp.next; 
      } else {
        print(slow?.data);
        return;
      }
    }
  }

  addAtIndex(int data, int index) {
    Node? temp = head;

    Node node = Node(data);

    while (temp != null) {
      if (index == count) {
        node.next = temp;
        prev?.next = node;
        return;
      } else {
        count++;
        prev = temp;
        temp = temp.next;
      }
    }
  }

  display() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}
