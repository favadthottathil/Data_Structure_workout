void main() {
  List arr = [
    1,
    2,
    3,
    4,
    5
  ];
  int target = 3;

  print(binaryRecursion(arr, target, 0, arr.length - 1));
}

binaryRecursion(List arr, int target, int first, int last) {
  if (first > last) {
    return;
  }

  int middle = (first + last / 2).floor();

  if (arr[middle] == target) {
    return middle;
  }
  if (arr[middle] > target) {
    return binaryRecursion(arr, target, first, middle - 1);
  }

  if (arr[middle] < target) {
    return binaryRecursion(arr, target, middle + 1, last);
  }
}
