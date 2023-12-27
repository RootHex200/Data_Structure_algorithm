
//5. Longest Palindromic Substring

void main(List<String> args) {
  print(longestPalindrome("cbbd"));
}

  String longestPalindrome(String s) {
      int leftIndex = 0;
      int rightIndex = 0;

      for (int i = 0; i < s.length ; i++) {
          // even length
          int left = i;
          int right = i + 1;
          while (left >= 0 && right < s.length && s[left] == s[right]) {
              if (right - left > rightIndex - leftIndex) {
                  rightIndex = right;
                  leftIndex = left;
              }
              right++;
              left--;
          }

          // odd length
          left = i;
          right = i + 2;
          while (left >= 0 && right < s.length && s[left] == s[right]) {
              if (right - left > rightIndex - leftIndex) {
                  rightIndex = right;
                  leftIndex = left;
              }
              right++;
              left--;
          }
      }

      return s.substring(leftIndex, rightIndex + 1);
  }