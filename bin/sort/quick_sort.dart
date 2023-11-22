void main() {
  List<int> arr = [
    34,
    78,
    4,
    3,
    2
  ];
  print(quickSort(arr, 0, arr.length - 1));
}

quickSort(List<int> arr, int first, int last) {
  if (first < last) {
    int pivot = partition(arr, first, last);

    quickSort(arr, first, pivot - 1);
    quickSort(arr, pivot + 1, last);
  }
  return arr;
}

partition(List<int> arr, int first, int last) {
  int pivot = arr[first];

  int firstIndex = first;

  int lastIndex = last;

  while (firstIndex <= lastIndex) {
    while (firstIndex <= lastIndex && arr[firstIndex] <= pivot) {
      firstIndex++;
    }

    while (firstIndex <= lastIndex && arr[lastIndex] > pivot) {
      lastIndex--;
    }
    if (firstIndex <= lastIndex) {
      int temp = arr[firstIndex];

      arr[firstIndex] = arr[lastIndex];

      arr[lastIndex] = temp;
    }
  }

  int temp = arr[first];
  arr[first] = arr[lastIndex];

  arr[lastIndex] = temp;

  return lastIndex;
}
