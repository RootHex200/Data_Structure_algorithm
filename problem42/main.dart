void main(List<String> args) {
  print(Solution().lengthOfLongestSubstring("abba"));
}
class Solution {
int lengthOfLongestSubstring(String s) {
  if (s.isEmpty) {
    print("Input string is empty.");
    return 0;
  }

  // Create a map to store the index of each character in the string
  Map<String, int> charIndexMap = {};

  // Initialize variables to keep track of the start and end of the current substring
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;

  // Iterate through the string
  for (int end = 0; end < s.length; end++) {
    String currentChar = s[end];

    // If the current character is already in the substring, update the start index
    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]!>=start) {
      start = charIndexMap[currentChar]! + 1;
    }

    // Update the index of the current character
    charIndexMap[currentChar] = end;

    // Update the maximum length and starting index if the current substring is longer
    if (maxLength < (end - start + 1)) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }
  return "${s.substring(maxStart, maxStart + maxLength)}".length;
}
}