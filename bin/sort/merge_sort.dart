void main() {
  List<int> list = [
    23,
    1,
    45,
    1,
    3,
    5,
    9,
    1,
    1,
    1,
    1,
    1,
  ];

  var favd = mergeSort(list);
  print(favd);
}

mergeSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }

  int mid = list.length ~/ 2;

  List<int> left = mergeSort(list.sublist(0, mid));

  List<int> right = mergeSort(list.sublist(mid));

  return merge(left, right);
}

merge(List<int> left, List<int> right) {
  List<int> visited = [];

  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) {
      visited.add(left[i]);
      i++;
    } else {
      visited.add(right[j]);
      j++;
    }
  }

  visited.addAll(left.sublist(i));
  visited.addAll(right.sublist(j));

  return visited;
}
