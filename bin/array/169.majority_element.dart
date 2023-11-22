void main() {
  List arr = [
    2,
    2,
    1,
    1,
    1,
    2,
    2
  ];

  int arrayhalfCount = arr.length ~/ 2;

  for (var i = 0; i < arr.length - 1; i++) {
    int count = 1;

    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    if (count > arrayhalfCount) {
      print(arr[i]);
      break;
    }
  }
}
