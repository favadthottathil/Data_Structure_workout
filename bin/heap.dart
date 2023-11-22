// import 'dart:math';

void main(List<String> args) {
  List<int> arr = [
    45,
    23,
    56,
    67,
    2,
    1,
    4
  ];

  for (int element in arr) {
    print(element);
  }

  arr.forEach((element) {
    print(element);
  });
}

class Heap {
  List<int> heap = [];

  Heap();

  Heap.fromlist(List<int> arr) {
    buildHeap(arr);
  }

  buildHeap(List<int> arr) {
    heap = arr;

    for (var i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  shiftDown(int i) {
    int last = heap.length - 1;

    int leftidx = left(i);

    while (leftidx <= last) {
      int rigthidx = right(i);

      int shift;

      if (rigthidx <= last && heap[rigthidx] < heap[leftidx]) {
        shift = rigthidx;
      } else {
        shift = leftidx;
      }

      if (heap[i] > heap[shift]) {
        swap(heap, i, shift);
        i = shift;
        leftidx = left(i);
      } else {
        return;
      }
    }
  }

  shiftup(int i) {
    int parentIdx = parent(i);

    while (i > 0 && heap[parentIdx] > heap[i]) {
      swap(heap, i, parentIdx);

      i = parentIdx;
      parentIdx = parent(i);
    }
  }

  remove() {
    swap(heap, 0, heap.length - 1);
    heap.removeLast();
    shiftDown(0);
  }

  insert(int data) {
    heap.add(data);

    shiftup(heap.length - 1);
  }

  swap(heap, i, j) {
    int temp = heap[i];

    heap[i] = heap[j];

    heap[j] = temp;
  }

  parent(int i) {
    return (i - 1) ~/ 2;
  }

  left(int i) {
    return i * 2 + 1;
  }

  right(int i) {
    return i * 2 + 2;
  }

  display() {
    for (var i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

heapSort(List<int> arr) {
  Heap heap = Heap.fromlist(arr);

  List<int> sorted = [];

  while (heap.heap.isNotEmpty) {
    sorted.add(heap.heap[0]);
    heap.remove();
  }
  return sorted;
}
