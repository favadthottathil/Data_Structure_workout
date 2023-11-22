void main() {
  List<List<int>> arr = [
    [
      2,
      3,
      4,
      7,
      1
    ],
    [
      4,
      1,
      3,
      5
    ],
    [
      8,
      4,
      6,
      2,
      1
    ],
    [
      7,
      9,
      4,
      1
    ]
  ];

  List<int> result = [];

  for (var i = 0; i < arr.length; i++) {
    var subArr = arr[i];
    for (var j = 0; j < subArr.length - 1; j++) {
      if (!result.contains(subArr[j])) {
        result.add(subArr[j]);
      }
    }
  }

  print(result);
}
