class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    String str = x.toString();
    return str == str.split('').reversed.join();
  }
}
