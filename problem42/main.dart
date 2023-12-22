
import 'dart:math';

void main(List<String> args) {
  print(Solution().lengthOfLongestSubstring("pwwkew"));
  
}

	class Solution {
	  int lengthOfLongestSubstring(String s) {
		  var l = 0;
		  var visit = <String>{};
		  var res = 0;

		  for (var r = 0; r < s.length; r++){
			  while (visit.contains(s[r])){
				  visit.remove(s[l]);
				  l += 1;
			  }

			  visit.add(s[r]);
        print("res = ${res}");
			  res = max(res, r - l + 1);
        print("l = ${l}");
        print("r = ${r}");
        print("res = ${res}");
		  }
		  return res;

	  }
	}