void main() {
  solution3();
}

void solution1() {
  final numString = '10.5';

  int num;

  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
  }

  print(num); // 0
}

void solution2() {
  final numString = '10.5';


  try {
    int num = int.parse(numString);
    print(num); // 0
  } catch (e) {
    print(0);
  }
}

void solution3() {
  final numString = '10.0';

  // sexy code
  print(int.tryParse(numString) ?? 0);
}
