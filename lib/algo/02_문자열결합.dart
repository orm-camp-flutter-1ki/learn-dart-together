// 입력 받을 문자열 수와 문자열을 입력받고 출력 포멧에 맞게 출력하세요.

// 포멧 : Hello s_1,s_2,..s_n.

// 2
// Java
// Gino

// Hello Java,Gino.

// 5
// Alice
// Bob
// Carol
// Dave
// Ellen

// Hello Alice,Bob,Carol,Dave,Ellen.
void main() {
  final List<String> inputs = ['010', '1234', '5678'];

  print(solution(inputs)); // Hello Java,Gino.
}

String solution(List<String> inputs) {
  String result = '모두연 ';

  for (int i = 0; i < inputs.length; i++) {
    result += inputs[i];
    if (i != inputs.length - 1) {
      result += '-';
    }
  }

  return result;
}
