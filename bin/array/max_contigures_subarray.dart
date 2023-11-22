void main() {
  List arr = [
    2,
    -3,
    7,
    -4,
    2,
    5,
    -8,
    6,
    -1
  ];

  int bestSum = 0;
  int first = 0;
  int last = 0;

  int current = 0;
  int currentfirst = 0;

  for (var i = 0; i < arr.length; i++) {
    current += arr[i] as int;

    if (current < 0) {
      current = 0;
      currentfirst = i + 1;
    } else if (current > bestSum) {
      bestSum = current;
      first = currentfirst;
      last = i;
    }
  }

  for (var i = first; i <= last; i++) {
    print(arr[i]);
  }
}
