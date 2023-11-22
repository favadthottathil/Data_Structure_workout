void main() {
  List<int> list = [
    34,
    56,
    3,
    2,
    1
  ];

  for (var i = 0; i < list.length - 1; i++) {
    int min = i;

    for (var j = i + 1; j < list.length; j++) {
      

      if (list[j] < list[min]) {
        min = j;
      }
    }
    // swap

    int temp = list[i];

    list[i] = list[min];
    list[min] = temp;
  }

  print(list);
}
