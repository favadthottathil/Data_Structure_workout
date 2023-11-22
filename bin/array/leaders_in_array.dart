void main() {
  List arr = [
    21,
    58,
    44,
    14,
    51,
    36,
    23
  ];

  int max = 0;

  for (var i = arr.length - 1; i >= 0; i--) {
    if (arr[i] > max) {
      max = arr[i];
      print(max);
    }
  }
}
