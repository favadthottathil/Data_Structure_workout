void main() {
  List arr = [
    3,
    6,
    3,
    8,
    6,
    1
  ];
  sortingMethod(arr);
}

bruteForceMethod(arr) {
  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        print(arr[j]);
      }
    }
  }
}

sortingMethod(List arr) {
  arr.sort();

  for (var i = 0; i < arr.length - 1; i++) {
    if (arr[i] == arr[i + 1]) {
      print(arr[i + 1]);
    }
  }
}
