import 'dart:math';

class CustomDice {
  Random _random;

  CustomDice() : _random = Random();

  int roll() {
    int number = _random.nextInt(38) + 2; // 2부터 39까지의 숫자 생성
    return number;
  }


}

void main() {
  var dice = CustomDice();
  print('주사위 굴림: ${dice.roll()}');
}
