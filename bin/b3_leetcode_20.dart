// https://leetcode.com/problems/valid-parentheses/
void main(List<String> args) {
  print(isValid("()"));
  print(isValid("(]"));
  print(isValid("()[]{}"));
}

bool isValid(String s) {
  // tạo 1 list
  List<String> tempStack = [];

  for (int i = 0; i < s.length; i++) {
    // thêm các ký tự (, [, { vào list
    if (s[i] == '(' || s[i] == '[' || s[i] == '{') {
      tempStack.add(s[i]);
    } else {
      // nếu list rỗng thì trả lại false vì không có các ký tự (, [, { để kiểm tra
      if (tempStack.isEmpty) {
        return false;
      }
      String firstString = tempStack.first;
      // kiểm tra các ký tự nếu đáp ứng điều kiện thì xóa ký tự có trong list đi
      if (firstString == '(' && s[i] == ')' ||
          firstString == '[' && s[i] == ']' ||
          firstString == '{' && s[i] == '}') {
        tempStack.removeLast();
      } else {
        break;
      }
    }
  }
  // sau khi làm tất cả các bước thì kiểm tra xem list có rỗng hay không, nếu rỗng thì trả lại true
  return tempStack.isEmpty;
}
