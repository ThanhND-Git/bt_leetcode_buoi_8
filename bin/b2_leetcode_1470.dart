// https://leetcode.com/problems/shuffle-the-array/
void main(List<String> args) {
  print(shuffle([2,5,1,3,4,7], 3));
  print(shuffle([1,2,3,4,4,3,2,1], 4));
}
// ý tưởng : lúc sắp xếp lại mảng thì x luôn ở vị trí chẵn và y thì luôn ở vị trí lẻ
List<int> shuffle(List<int> nums, int n) {
  List<int> result = List.filled(2 * n, 0);
  // tạo 1 vòng lặp để thêm 
  for (int i = 0; i < n; i++) {
    // thêm x vào vị trí chẵn
    result[2 * i] = nums[i];
    // thêm y vào vị trí lẻ
    result[2 * i + 1] = nums[n + i];
  }
  return result;
}
