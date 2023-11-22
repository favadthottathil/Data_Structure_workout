void main(List<String> args) {
  List<int> arr = [
    34,
    23,
    2,
    56,
    78,
    3,
    1
  ];

  quickSort(0, arr.length - 1, arr);

  print(arr);
}

int partition(int first, int last, List<int> arr) {
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

quickSort(int first, int last, List<int> arr) {
  if (first < last) {
    int result = partition(first, last, arr);

    quickSort(first, result - 1, arr);
    quickSort(result + 1, last, arr);
  }

  return arr;
}