// https://leetcode.com/problems/shuffle-string/
void main(List<String> args) {
  print(restoreString("codeleet", [4, 5, 6, 7, 0, 2, 1, 3]));
}

String restoreString(String s, List<int> indices) {
  // tạo 1 list có độ dài bằng độ dài của indices
  final res = List.generate(
      // giá trị tại index lần lượt là các ký tự trong s
      indices.length, (index) => s[indices.indexOf(index)],
      growable: true);
  return res.join();
}
