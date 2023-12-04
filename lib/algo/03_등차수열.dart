void main() {
  print(solution(5, 10));
  print(solution(3, 3));
  print(solution2(1, 3));
}

// 5, 10
String solution(int m, int n) {
  String result = '';

  for (int i = 0; i < 10; i++) {
    // 1번째 : 5 + 10 * 0 = 5
    // 2번째 : 5 + 10 * 1 = 15
    // 3번째 : 5 + 10 * 2 = 25
    // ...
    // m + n * i
    if (i == 9) {
      result += '${m + n * i}';
    } else {
      result += '${m + n * i} ';
    }
  }

  return result;
}

String solution2(int m, int n) {
  String result = '';

  for (int i = 0; i < 10; i++) {
    // 1번째 : 5 + 10 * 0 = 5
    // 2번째 : 5 + 10 * 1 = 15
    // 3번째 : 5 + 10 * 2 = 25
    // ...
    // m + n * i
    result += '${m + n * i} ';
  }

  return result.trim();
}
