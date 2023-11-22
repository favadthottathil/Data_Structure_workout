void main() {
  List arr = [
    45,
    0,
    2,
    0,
    0
  ];

  int count = 0;

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] != 0) {
      arr[count] = arr[i];
      count++;
    }
  }

  while (count < arr.length - 1) {
    arr[count] = 0;
    count++;
  }

  print(arr);
}
