
//58. Length of Last Word
void main(List<String> args) {
  print(lengthOfLastWord("   fly me   to   the moon  "));
}

int lengthOfLastWord(String s) {
  var newword = s.trim().split(" ").last.length;
  return newword;
}
