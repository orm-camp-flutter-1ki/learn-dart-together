import 'sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack() {}

  void run() {}
}

void main() {
  final fireSword = Sword(name: 'bbb', damage: 10);
  final hero = Hero(name: 'aaa', hp: 10, sword: fireSword);
}
