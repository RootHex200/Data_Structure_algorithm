//28. Find the Index of the First Occurrence in a String

void main(List<String> args) {
  print(strStr("sadbutsad", "sad"));
}

int strStr(String haystack, String needle) {
  if (haystack.contains(needle)) {
    return haystack.indexOf(needle);
  }
  return -1;
}
