import 'dart:collection';

void main(List<String> args) {
  Queue queue = Queue();
  // queue.add(10);
  // queue.add(20);
  // queue.add(30);
  // queue.add(40);
  // queue.add(50);
  // queue.add(60);
  queue.addAll([
    10,
    20,
    30,
    40,
    50,
    60
  ]);

  int k = 3;

  reverse(queue, k);

  // print(queue);
}

reverse(Queue queue, int k) {
  List<int> stack = [];

  for (var i = 0; i < k; i++) {
    stack.add(queue.removeFirst());
  }

  while (stack.isNotEmpty) {
    queue.addFirst(stack.removeLast());
  }

  print(queue);
}
