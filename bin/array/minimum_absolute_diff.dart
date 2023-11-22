void main() {
  List arr = [
    -3,
    -2,
    5,
    7
  ];

  int i = 0;

  int j = 1;

  int firstIndex = 0;

  int secondIndex = 0;

  int differnece = 10000000;

  while (j < arr.length) {
    int elementDiff = 0;

    if (arr[i] >= arr[j]) {
      elementDiff = arr[i] - arr[j];
    } else {
      elementDiff = arr[j] - arr[i];
    }

    if (elementDiff < differnece) {
      differnece = elementDiff;
      firstIndex = arr[i];
      secondIndex = arr[j];
    }
    i++;
    j++;
  }

  print('minimum absolute differenc : $differnece');
  print('pair of difference [$firstIndex,$secondIndex]');
}
