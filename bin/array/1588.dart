void main() {
  sumOddLengthSubarrays([
    1,
    2
  ]);
}

sumOddLengthSubarrays(List<int> arr) {
  int sum = 0;

  List<int> sublist = [];

  for (var i = 0; i < arr.length; i++) {
    if ((i + 1) % 2 != 0) {
      for (var j = 0; j < arr.length; j++) {
        for (var k = j; k <= j + i && j + i < arr.length; k++) {
          // print(k);
          sublist.add(arr[k]);
        }

        if (sublist.length == i + 1) {
          for (var element in sublist) {
            sum += element;
          }
          sublist = [];
        }
      }
    }
  }

  return sum;
}

// Input: arr = [1,4,2,5,3]
// Output: 58
//   Explanation: The odd-length subarrays of arr and their sums are:
// [1] = 1
// [4] = 4
// [2] = 2
// [5] = 5
// [3] = 3
// [1,4,2] = 7
// [4,2,5] = 11
// [2,5,3] = 10
// [1,4,2,5,3] = 15
// If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58