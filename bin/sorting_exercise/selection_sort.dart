void main(List<String> args) {
  List arr = [
    45,
    23,
    23,
    67,
    8,
    9,
    1,
  ];

  for (var i = 0; i < arr.length - 1; i++) {
    int min = i;

    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }

    int temp = arr[i];

    arr[i] = arr[min];
    arr[min] = temp;
  }

  print(arr);
}
