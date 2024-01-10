
//48. Rotate Image

void main(List<String> args) {
  var matriz=[[1,2,3],[4,5,6],[7,8,9]];
  rotate(matriz);
  print(matriz);
  
}

void rotate(List<List<int>> matrix) {
  
  for(int i=0;i<matrix.length;i++){
    for(int j=0;j<=i;j++){
      var tmp=matrix[i][j];
      matrix[i][j]=matrix[j][i];
      matrix[j][i]=tmp;
    }
  }
  for(int k=0;k<matrix.length;k++){

    var left=0;
    var right=matrix.length -1;

    while(left<right){
    var tmp=matrix[k][left];
    matrix[k][left]=matrix[k][right];
    matrix[k][right]=tmp;

    left++;
    right--;
    }

  }
}