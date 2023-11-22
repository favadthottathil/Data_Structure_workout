void main(List<String> args) {
  var nums = [
    8,
    1,
    2,
    2,
    3
  ];
  var newList = [];
  int count = 0;

  for (int i = 0; i < nums.length; i++) {
    int number = nums[i];

    for (int j = 0; j < nums.length; j++) {
      if (nums[j] < number && j != i) {
        count++;
      }
    }
    newList.add(count);
    count = 0;
  }
  print(newList);
}
