import 'dart:math';

void main() {
  print(solution(10, 3));
}

String solution(int a, int b) {
  if (a > b) {
    return '$a';
  } else if (b > a) {
    return '$b';
  }
  return 'eq'.toString();
}

solution2(int a, int b) {
  if (a == b) {
    return 'eq';
  }

  return max<int>(a, b);
}
