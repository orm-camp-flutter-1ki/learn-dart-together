late String description;

void main() {
  description = 'Feijoada!';
  print(description);

  // non nullable
  int num1 = 10;

  // nullable
  int? num2;

  // 안전한 호출
  print(num2?.isEven ?? '값이 없습니다');

  // int? -> int
  // !!!!!!!!!!!!!!!!!!!
  if (num2 != null) {
    print('!!!!');
    num1 = num2;
  }

  num2 = num1;
}
