void main() {
  MaxHeap maxHeap = MaxHeap();

  maxHeap.insert(4);
  maxHeap.insert(10);
  maxHeap.insert(8);
  maxHeap.insert(5);
  maxHeap.insert(20);

  print(maxHeap.heapsort());
}

class MaxHeap {
  late List<int> heap;

  MaxHeap() {
    heap = [];
  }

  insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  shiftUp(int index) {
    int parent = (index - 1) ~/ 2;

    if (index > 0 && heap[index] > heap[parent]) {
      int temp = heap[index];
      heap[index] = heap[parent];
      heap[parent] = temp;

      shiftUp(parent);
    }
  }

  remove() {
    int max = heap[0];

    heap[0] = heap[heap.length - 1];

    heap.removeLast();

    shiftDown(0);

    return max;
  }

  shiftDown(int index) {
    int leftChild = 2 * index + 1;

    int rightChild = 2 * index + 2;

    int largest = index;

    if (leftChild < heap.length && heap[leftChild] > heap[largest]) {
      largest = leftChild;
    }
    if (rightChild < heap.length && heap[rightChild] > heap[largest]) {
      largest = rightChild;
    }

    if (largest != index) {
      int temp = heap[index];
      heap[index] = heap[largest];
      heap[largest] = temp;

      shiftDown(largest);
    }
  }

  heapsort() {
    List<int> sorted = [];

    while (heap.isNotEmpty) {
      sorted.add(remove());
    }
    return sorted;
  }
}
