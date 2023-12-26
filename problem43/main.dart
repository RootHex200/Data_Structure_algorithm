
//4. Median of Two Sorted Arrays

void main(List<String> args) {
  print(findMedianSortedArrays([1,3], [2,4]));
}

  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    
    final list=nums1+nums2;
    list.sort();

    if((list.length)%2==0){
      var middle=(list.length)~/2;
      var first=list[middle-1];
      var seecond=list[middle];
      return (first+seecond)/2;

    }else{
      var middle=(list.length+1)~/2;
      
      return list[middle-1].toDouble();
    }
  
  }