void main() {
  SlinkedList slinkedList = SlinkedList();

  slinkedList.add(1);
  slinkedList.add(2);
  slinkedList.add(3);
  slinkedList.add(4);
  slinkedList.add(5);

  slinkedList.reverse();

  slinkedList.display();

  print('//////');

  // slinkedList.deleteDuplicate();

  // // slinkedList.findMiddle();

  // slinkedList.display();
}

class Node {
  int data;

  Node? next;

  Node(this.data);
}

class SlinkedList {
  Node? head;

  Node? tail;

  add(int data) {
    Node node = Node(data);

    if (head == null) {
      head = node;
    } else {
      tail!.next = node;
    }
    tail = node;
  }

  reverse() {
    Node? next, prev, temp = head;

    while (temp != null) {
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    head = prev;
  }

  deleteDuplicate() {
    Node? prev, temp = head;

    List<int> visited = [];

    while (temp != null) {
      if (visited.contains(temp.data)) {
        if (temp == tail) {
          prev?.next = null;
          tail = prev;
          return;
        }

        prev?.next = temp.next;
        temp = temp.next;
      } else {
        visited.add(temp.data);
        prev = temp;
        temp = temp.next;
      }
    }
    print('no duplicate data found');
  }

  delete(int data) {
    Node? prev = head, temp = head;

    if (temp?.data == data) {
      head = head!.next;
      return;
    }

    while (temp?.data != data) {
      prev = temp;

      temp = temp?.next;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }

    prev?.next = temp?.next;
  }

  findMiddle() {
    Node? slow = head, fast = head;

    while (fast?.next?.next != null) {
      slow = slow!.next;
      fast = fast?.next?.next;
    }
    print(slow!.data);
  }

  addAtFirst(int data) {
    Node node = Node(data);

    node.next = head;

    head = node;
  }

  addAtLast(int data) {
    Node node = Node(data);

    tail!.next = node;

    tail = node;
  }

  display() {
    Node? current = head;

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
