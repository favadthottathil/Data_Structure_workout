void main() {
  SlinkedList slinkedList1 = SlinkedList();
  SlinkedList slinkedList2 = SlinkedList();
  SlinkedList slinkedList3 = SlinkedList();

  String string1 = '';
  String string2 = '';
  int result = 0;
  slinkedList1.insert(2);
  slinkedList2.insert(5);
  slinkedList1.insert(4);
  slinkedList2.insert(6);
  slinkedList1.insert(3);
  slinkedList2.insert(4);

  slinkedList1.reverse();
  slinkedList2.reverse();

  List list1 = slinkedList1.display();
  List list2 = slinkedList2.display();

  for (int data in list1) {
    string1 += data.toString();
  }
  for (int data in list2) {
    string2 += data.toString();
  }

  int number1 = int.parse(string1);
  int number2 = int.parse(string2);

  result = number1 + number2;

  String results = result.toString();

  for (var i = 0; i < results.length; i++) {
    slinkedList3.insert(int.parse(results[i]));
  }

  slinkedList3.reverse();

  print(slinkedList3.display());
}

class Node {
  int data;

  Node? next;

  Node(this.data);
}

class SlinkedList {
  Node? head;
  Node? tail;

  insert(int data) {
    Node node = Node(data);
    if (head == null) {
      head = node;
    } else {
      tail?.next = node;
    }
    tail = node;
  }

  reverse() {
    Node? temp = head;

    Node? next;

    Node? prev;

    while (temp != null) {
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    head = prev;
  }

  display() {
    List visited = [];

    Node? temp = head;

    while (temp != null) {
      visited.add(temp.data);
      temp = temp.next;
    }

    return visited;
  }
}
