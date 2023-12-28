//10. Regular Expression Matching


void main(List<String> args) {
  print(isMatch("aa", "a"));
}

bool isMatch(String s, String p) {
  
  p=checkStar(p)??p;
  final pattern = RegExp(p);
  if (pattern.stringMatch(s).toString() == s) {
    return true;
  }
  
  return false;
}

 checkStar(String star){
  try{
      final start_star_index=star.indexOf("*");
  if(star[start_star_index]==star[start_star_index+1]){
    star=star.replaceRange(start_star_index, start_star_index+1, '');
  }else{
    return star;
  }
  return checkStar(star);
  }catch (e){
    return null;
  }
}

