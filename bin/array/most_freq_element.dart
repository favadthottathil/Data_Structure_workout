void main() {
  int elementCount = 0;
  int index = 0;

  List arr = [
    4,
    5,
    8,
    7,
    4,
    7,
    6,
    7
  ];

  for (var i = 0; i < arr.length - 1; i++) {
    int count = 1;

    for (var j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }

    if (count > elementCount) {
      elementCount = count;
      index = arr[i];
    }
  }

  print('count $elementCount');
  print('index $index');
}
