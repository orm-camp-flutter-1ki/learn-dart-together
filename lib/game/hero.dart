import 'dart:math';

import 'sword.dart';

// top level
int heroMoney = 100;

class Hero {
  // 공통의 돈
  static int money = 100;
  static void moneyRandom() {
    Hero.money = Random().nextInt(1000);
  }

  String name;
  int hp;
  Sword? sword;

  Hero({
    this.name = '홍길동',
    this.hp = 100,
    this.sword,
  });

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack() {}

  void run() {}
}

void main() {
  print(Hero.money);

  final h1 = Hero();

  print(heroMoney);

  // final fireSword = Sword(name: 'bbb', damage: 10);
  //
  // final h1 = Hero();
  // Hero.money = 200;
  //
  // Hero(name: '배트맨');
  // Hero(hp: 200);
  // Hero(sword: fireSword);
  //
  // Hero(name: 'aaa', hp: 111);
  // Hero(hp: 111, sword: fireSword);
  //
  // final hero = Hero(name: 'aaa', hp: 10, sword: fireSword);
  //
  final person = Person();
  Hero.moneyRandom();
}

class Person {
  String name;

  Person({this.name = '아무개'});
}
