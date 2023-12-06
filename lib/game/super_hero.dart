import 'package:learn_dart_together/game/monster.dart';

import 'hero.dart';
import 'slime.dart';

class SuperHero extends Hero {
  bool _isFlying = false;

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;

    if (value) {
      print('$name 이 날개를 펼쳤다');
    } else {
      print('$name 이 날개를 접었다');
    }
  }

  SuperHero({required super.name, required super.hp}) {
    print('2. SuperHero 생성자');
  }

  // Annotation 애너테이션
  @override
  void run() {
    print('발에 땀이 나도록 뛰었다');
  }

  @override
  void attack(Monster slime) {
    print('준비를 취했다');

    super.attack(slime);

    if (isFlying) {
      print('추가공격');
    }
  }
}

void main() {
  final slime = Slime(100);

  final hero = Hero(name: '홍길동', hp: 50);
  hero.run();

  final superHero = SuperHero(name: '슈퍼맨', hp: 100);
  superHero.isFlying = true;
  superHero.run();

  hero.attack(slime);
  superHero.attack(slime);
}
