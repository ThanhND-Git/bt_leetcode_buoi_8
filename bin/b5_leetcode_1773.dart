// https://leetcode.com/problems/count-items-matching-a-rule/
void main(List<String> args) {
  print(countMatches([
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ], "color", "silver"));
  print(countMatches([
    ["phone", "blue", "pixel"],
    ["computer", "silver", "phone"],
    ["phone", "gold", "iphone"]
  ], "type", "phone"));
}

int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
  int key = 0, count = 0;
  // dựa vào ruleKey mà đề bài đưa ra ta có giá trị key tương ứng
  switch (ruleKey) {
    case "type":
      key = 0;
      break;
    case "color":
      key = 1;
      break;
    case "name":
      key = 2;
      break;
  }
  // từ key bên trên ta có thể lựa chọn thuộc tính phù hợp của từng item để so sánh với ruleValue
  // nếu phù hợp thì tăng count lên ngược lại kiểm tra item tiếp theo
  for (int i = 0; i < items.length; i++) {
    if (items[i][key] == ruleValue) {
      count++;
    }
  }

  return count;
}
