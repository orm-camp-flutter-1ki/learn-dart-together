import '../game/hero.dart';

void main() {
  final hero = Hero(name: '슈퍼맨', hp: 10);

  Hero hero2 = Hero(name: '슈퍼맨', hp: 10);
  int i = 10;
  double d = 10.0;

  final Car car = Car();

  // 영수 : O
  Door door = Door();

  // 철수 : X
  door = Door();

  // 기본 자료형
  // int, double, bool, String

  // 새로운 타입 만들래 => 클래스 작성
}

class Car {
  // 멤버변수, field, 전역변수, 프로퍼티
  List<Door> doors = [];
  List<Wheel> wheels = [];
  String color = 'red';
  String number = '18어3300';
  double speed = 0.0;

  bool isStarting = false;

  void start() {
    isStarting = true;
  }

  void drive() {
    if (isStarting) {
      // 가!!
    }
  }
}

class Wheel {}

class Door {}
