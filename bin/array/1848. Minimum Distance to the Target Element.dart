void main(List<String> args) {
  List<int> nums = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1
  ];

  int target = 1;

  int start = 9;

  int data = 10000;

  for (var i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      int j = i;
      int k = start;
      if (j < k) {
        int temp = j;
        j = k;
        k = temp;
      }

      int result = (j - start);

      if (result < data) {
        data = result;
        print(data);
      }
    }
  }
  // print(data);
}
