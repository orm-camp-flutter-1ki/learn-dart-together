import 'package:learn_dart_together/game/dancer.dart';
import 'package:learn_dart_together/game/hero.dart';
import 'package:learn_dart_together/game/monster.dart';

class Goblin extends Monster implements Speakable {
  @override
  void speak() {
    // TODO: implement speak
  }
}

void main() {
  List<Speakable> items = [
    Goblin(),
    Hero(name: 'name', hp: 100),
  ];

  List<Human> humans = [
    Student(),
    Teacher(),
  ];
}

abstract interface class Human {}

class Student implements Human {}

class Teacher implements Human {}
