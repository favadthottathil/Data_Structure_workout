void main() {
  List<int> list = [
    44,
    32,
    53,
    2,
    1
  ];

  for (var i = 1; i < list.length; i++) {
    int temp = list[i];

    int j = i - 1;

    while (j >= 0 && list[j] > temp) {
      list[j + 1] = list[j];
      j--;
    }

    list[j + 1] = temp;
  }
  print(list);
}
