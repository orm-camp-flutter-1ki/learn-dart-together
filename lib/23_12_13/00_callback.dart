// 콜백 함수를 사용하는 함수
void performOperation(int a, int b, int Function(int a, int b) callback) {
  print("Operation started with $a and $b");
  int result = callback(a, b);
  print("Result: $result");
}

// 덧셈 함수
int add(int a, int b) {
  return a + b;
}

// 뺄셈 함수
int subtract(int a, int b) {
  return a - b;
}

// 콜백 예제
void myFunc(void Function() onTap) {
  // 5초 동안 요리

  // 알리고
  onTap();

  // 3초 있다가 2번 또 알려
  onTap();
  onTap();
}

Future<void> main() async {
  // 덧셈 함수를 고계함수...
  performOperation(5, 3, (a, b) => a * b);

  // 뺄셈 함수를 고계함수...
  performOperation(8, 2, subtract);

  // 콜백
  myFunc(() {
    print('벨 울림!!');
  });

  int Function(int, int) addFunction = add;
  print(addFunction.call(1, 20)); // 명시적 호출
  print(addFunction(1, 20)); // 암묵적 호출

  // Future.delayed(Duration(seconds: 5));

  print('끝');

  // myFunction();

  saveDb('유저 데이터').then((_) {
    print('진짜 끝!!!!!!!!!!!!!!!!!!!!!!1111');
  });

}

// 오래 걸릴꺼야
Future<void> saveDb(user) async {
  print('DB 저장 시작');

  // 오래 걸리는 애
  await Future.delayed(Duration(seconds: 2));

  print('DB 저장 끝');
}

void myFunction() {
  print('start');

  Future.delayed(Duration(seconds: 2), () {
    print('2 sec');
  });

  print('end');
}