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

  n = i;
  n = d;

  d = i.toDouble();

  i = d.toInt();
}

abstract interface class Human {}

class Student implements Human {}

class Teacher implements Human {}
