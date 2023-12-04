void main() {
  int N = 30;
  int M = 15;

  print(solution(15, 30));
  print(solution(12, 40));
}

String solution(int n, int m) {
  // n 짝, m 홀
  if (n % 2 == 0 && m % 2 == 1) {
    return 'YES';
  } else if (n % 2 == 1 && m % 2 == 0) {
    return 'YES';
  }

  return 'NO';
}

// 2, 1 => 2 + 1
String solution2(int n, int m) {
  String result = 'NO';

  // n 짝, m 홀
  if ((n + m) % 2 == 1) {
    result = 'YES';
  }

  return result;
}

// n 짝, m 홀
String solution3(int n, int m) => (n + m) % 2 == 1 ? 'YES' : 'NO';
