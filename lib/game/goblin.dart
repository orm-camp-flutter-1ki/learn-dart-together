import 'package:learn_dart_together/game/dancer.dart';
import 'package:learn_dart_together/game/monster.dart';

class Goblin extends Monster implements Speakable {
  @override
  void speak() {
    // TODO: implement speak
  }
}

void main() {
  double d = 10.0;
  int i = 20;
  num n = 10.0;
  String s = '0';

  n = i;
  n = d;

  d = i.toDouble();

  i = d.toInt();

  print(10.isEven);

  // 정수 / 정수
  print(4 / 2);
}

abstract interface class Human {}

class Student implements Human {}

class Teacher implements Human {}
