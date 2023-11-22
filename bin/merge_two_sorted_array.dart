void main() {
  List arr1 = [
    1,
    2,
    3,
    5
  ];
  List arr2 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    12
  ];

  int i = 0;
  int j = 0;

  List merge = [];

  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      merge.add(arr1[i]);
      i++;
    } else if (arr1[i] > arr2[j]) {
      merge.add(arr2[j]);
      j++;
    } else {
      merge.add(arr1[i]);
      merge.add(arr2[j]);
      i++;
      j++;
    }
  }

  while (i < arr1.length) {
    merge.add(arr1[i]);
    i++;
  }

  while (j < arr2.length) {
    merge.add(arr2[j]);
    j++;
  }

  print(merge);
}
