class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}

 void main() {
  var nums = [4, 7, 5, 8];
  var target = 9;
  var solution = Solution();
  print(solution.twoSum(nums,target));
  
}
