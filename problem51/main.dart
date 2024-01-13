//88. Merge Sorted Array
void main(List<String> args) {
  List<int> nums1=[1,2,3,0,0,0];
  List<int> nums2=[2,5,6];
  merge(nums1, 3, nums2, 3);
  print(nums1);
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int count=0;
  for(int i=m;i<m+n;i++){
    nums1[i]=nums2[count];
    count++;
  }
  nums1.sort();
}