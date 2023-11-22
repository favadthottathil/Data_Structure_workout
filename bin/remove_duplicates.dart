void main() {
  List arr = [
    1,
    1,
    2,
    2,
    3,
    4,
    7,
    2,
    4
  ];

  for (var i = 0; i < arr.length; i++) {
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        for (var k = j; k < arr.length-1; k++) {
          arr[k] = arr[k + 1];
        }
        arr.length--;
      }
    }
  }
  print(arr);
}
