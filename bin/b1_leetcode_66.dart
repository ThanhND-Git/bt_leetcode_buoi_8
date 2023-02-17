// https://leetcode.com/problems/plus-one/description/
void main(List<String> args) {
  print(plusOne([1, 2, 3]));
  print(plusOne([4, 3, 2, 1]));
  print(plusOne([9]));
  print(plusOne([1, 9]));
}

List<int> plusOne(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    // nếu khác 9 thì cộng thêm 1
    if (digits[i] != 9) {
      digits[i]++;
      // ngắt luôn vòng lặp
      return digits;
    }
    // ngược lại bằng 9 thì gán phần tử đó  = 0
    else {
      digits[i] = 0;
    }
  }

  var res = digits.toList();
  res.insert(0, 1);
  return res;
}
