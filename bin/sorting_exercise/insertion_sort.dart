void main(List<String> args) {
  List arr = [
    45,
    32,
    12,
    56,
    7,
    89,
    2,
    1
  ];

  for (var i = 1; i < arr.length; i++) {
    int temp = arr[i];

    int j = i - 1;

    while (j >= 0 && arr[j] > temp) {
      arr[j+1] = arr[j];
      j--;
    }

    arr[j+1] = temp;
  }
  print(arr);
}
