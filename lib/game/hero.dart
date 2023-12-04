import 'dart:math';

import 'sword.dart';

class Hero {
  // 공통의 돈
  static int money = 100;
  static void moneyRandom() {
    Hero.money = Random().nextInt(1000);
  }

  String name;
  int _hp;
  Sword? sword;

  Hero({
    this.name = '홍길동',
    required int hp,
    this.sword,
  }) : _hp = hp;

  // getter
  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }

  // Java 스타일의 getter/ setter
  //
  // void setName(String name) {
  //   _name = name;
  // }
  //
  // String getName() {
  //   return _name;
  // }

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack() {}

  void run() {}
}

void main() {
  print(Hero.money);

  final hero = Hero(hp: 100);

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
  Hero.moneyRandom();
}
