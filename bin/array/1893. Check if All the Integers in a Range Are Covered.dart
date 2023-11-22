void main() {
  List<List<int>> ranges = [
    [
      1,
      1,
    ],
  ];

  int count = 0;

  int left = 1;

  int right = 50;

  List numbers = [];

  for (List<int> arr in ranges) {
    if (left <= right) {
      for (var i = 0; i < arr.length; i++) {
        if (arr[i] == right) {
          numbers.add(right);
        }
        if (arr[i] == left) {
          numbers.add(left);
          left++;
          count++;
          if (left == right) {
            break;
          }
        }
      }
      if (count == 0) {
        print('false');
        break;
      }
      // count = 0;
    }
  }
  if (!numbers.contains(right)) {
    print('false favadadd');
  }

  print('true');
}
