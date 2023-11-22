void main() {
  List<int> arr = [
    34,
    56,
    23,
    2,
    1
  ];

  mergeSort(0, arr.length - 1, arr);
  print(arr);
}

mergeSort(int first, int last, arr) {
  int middle = (first + last) ~/ 2;

  if (first < last) {
    mergeSort(first, middle, arr);
    mergeSort(middle + 1, last, arr);
    merge(first, last, middle, arr);
  }
}

merge(int firstIndex, int lastIndex, int middle, List<int> arr) {
  int i = firstIndex;
  int j = middle + 1;
  int k = firstIndex;

  List<int> arr2 = List.filled(arr.length, 0);

  while (i <= middle && j <= lastIndex) {
    if (arr[i] < arr[j]) {
      arr2[k++] = arr[i++];
    } else {
      arr2[k++] = arr[j++];
    }
  }

  while (i <= middle) {
    arr2[k++] = arr[i++];
  }
  while (j <= lastIndex) {
    arr2[k++] = arr[j++];
  }

  for (var i = firstIndex; i <= lastIndex; i++) {
    arr[i] = arr2[i];
  }
}
