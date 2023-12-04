void main() {
  // 빈 리스트
  final List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.insert(0, 5);

  // 안티패턴1
  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('1');
  numbers2.add(true);
  numbers2.add(null);

  // 안티2
  final List<int> numbers3 = [];

  // 올바른 방법
  final numbers4 = <int>[];

  // 절대악!!!!!!!!!!!
  dynamic a = 10;
  print(a + 20); // 30

  a = 'ㅁㅁㅁ';
  a = true;
  a = null;

  print(numbers2);

  // final person = Person('홍길동');
  // String s = person.something('hello', 0);
  // String s1 = person.something(0, true);

  int num = 10;
  double ff = 10.0;
  List<int> nums = [1, 2, 3, 4];
  print(nums);

  // index 활용
  for (int i = 0; i < nums.length; i++) {
    final num = nums[i];
    print('$num : $i번');
  }

  // 무지성
  for (var num in nums) {
    // 조건문
    if (num == 5) {
      break;
    }
    print('$num');
  }

  // 함수형 프로그래밍 (함수 안에 함수 던지기)
  nums.forEach((int num) {
    print('$num');
  });

  nums.forEach(print);

  List<int> number3 = [1, 1, 1, 100];
  print(number3);

  print(number3[1]);

  Set<int> lottoSet = {};
  lottoSet.add(1);
  lottoSet.add(1);
  lottoSet.add(1);
  lottoSet.add(2);

  print(lottoSet);

  for (var value in lottoSet) {
    print(value);
  }

  // Object : 컴파일타임
  // dynamic : 런타임
  //          Object? 도 고려
  Map<String, dynamic> gildong = {
    'name': '홍길동',
    'id': 0,
    'age': 20,
  };

  print(gildong['name']);
  print(gildong['id']);
  print(gildong['age']);

  gildong['name'] = '한석봉';

  bool id = gildong['id'];
  print(id);

  List<List<String?>> fff = [];
}

class Person {
  String name;
  int id;
  int age;

  Person({
    required this.name,
    required this.id,
    required this.age,
  });
}

void bbbb(int a) {}

String myPrint(int value, int value2) {
  return '';
}

// class Person {
//   String name;
//
//   Person(this.name);
//
//   something(a, name) {
//     return 'hello' + a;
//   }
// }
