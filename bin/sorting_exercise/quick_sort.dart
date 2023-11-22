void main() {
  List<int> arr = [
    34,
    56,
    78,
    23,
    2,
    1
  ];

  print(quicksort(0, arr.length - 1, arr));
}

quicksort(first, last, arr) {
  if (first < last) {
    int pivot = parition(first, last, arr);

    quicksort(first, pivot - 1, arr);
    quicksort(pivot + 1, last, arr);

    return arr;
  }
}

parition(first, last, arr) {
  int pivot = arr[first];

  int fistIndex = first;

  int lastIndex = last;

  while (fistIndex <= lastIndex) {
    while (fistIndex <= lastIndex && arr[fistIndex] <= pivot) {
      fistIndex++;
    }

    while (fistIndex <= lastIndex && arr[lastIndex] > pivot) {
      lastIndex--;
    }

    if (fistIndex <= lastIndex) {
      int temp = arr[fistIndex];
      arr[fistIndex] = arr[lastIndex];
      arr[lastIndex] = temp;
    }
  }

  int temp = arr[first];
  arr[first] = arr[lastIndex];

  arr[lastIndex] = temp;

  return lastIndex;
}
