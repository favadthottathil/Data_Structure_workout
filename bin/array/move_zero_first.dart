void main() {
  List arr = [
    43,
    7,
    0,
    4,
    0,
    0
  ];

  int count = arr.length - 1;

  for (var i = arr.length - 1; i >= 0; i--) {
    if (arr[i] != 0) {
      arr[count] = arr[i];
      count--;
    }
  }
  while (count >= 0) {
    arr[count] = 0;
    count--;
  }
  print(arr);
}
