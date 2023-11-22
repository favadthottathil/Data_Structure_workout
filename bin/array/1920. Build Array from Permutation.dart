void main(List<String> args) {
  
}

List<int> buildArray(List<int> nums) {

      List<int> temp = [];

      for(int i = 0; i < nums.length; i++){

          int value = nums[i];

          temp.add(nums[value]);

      }

      return temp;
    
  }