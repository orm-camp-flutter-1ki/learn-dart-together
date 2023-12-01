import 'package:learn_dart_together/game/hero.dart';

void main() {
  final hero1 = Hero('홍길동', 100); // 인스턴스 생성
  final hero2 = hero1;
  hero2.hp = 200;

  print(hero1.hp);
}
