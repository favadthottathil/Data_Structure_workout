void main() {
  List arr = [
    32,
    45,
    60,
    23,
    67,
    100
  ];

  method1(arr);
}

method1(arr) {
  int largest = 0;
  int secondLargest = 0;

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > largest) {
      largest = arr[i];
    }
  }

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > secondLargest && arr[i] < largest) {
      secondLargest = arr[i];
    }
  }

  print('largest : $largest');

  print('SecondLargest : $secondLargest');
}

method2(List arr) {
  int largest = 0;
  int secondLargest = 0;

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] > largest) {
      secondLargest = largest;
      largest = arr[i];
    } else if (arr[i] > secondLargest && arr[i] < largest) {
      secondLargest = arr[i];
    }
  }

  print('largest : $largest');

  print('SecondLargest : $secondLargest');
}
