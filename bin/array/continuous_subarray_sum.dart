void main() {
  List arr = [
    1,
    2,
    3,
    4,
    5
  ];

  int value = 6;

  method2(arr, value);
}

method1(List arr, int value) {
  int sum = 0;

  for (var i = 0; i < arr.length; i++) {
    sum = arr[i];

    for (var j = i + 1; j < arr.length; j++) {
      sum += arr[j] as int;

      if (sum == value) {
        for (var k = i; k <= j; k++) {
          print(arr[k]);
        }
      } else if (sum < value) {
        continue;
      } else if (sum > value) {
        break;
      }
    }
  }
}

method2(List arr, int value) {
  int sum = arr[0];

  int index = 0;

  for (var i = 1; i < arr.length; i++) {
    sum += arr[i] as int;
    while (sum > value && index <= i - 1) {
      sum -= arr[index] as int;
      index++;
    }
    if (sum == value) {
      for (var k = index; k <= i; k++) {
        print(arr[k]);
      }
    }
  }
}
