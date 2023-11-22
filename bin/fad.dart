void main() {
  List<int> arr = [
    2,
    3,
    4,
    3,
    7,
    4,
    9,
    11,
    7
  ];

  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        arr.remove(arr[j]);
      }
    }
  }
  print(arr);
}

