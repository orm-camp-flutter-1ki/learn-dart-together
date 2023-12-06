import 'package:learn_dart_together/game/character.dart';
import 'package:learn_dart_together/game/hero.dart';
import 'package:learn_dart_together/game/slime.dart';

void main() {
  Wizard wizard = Wizard('마법사', 100);
  Character character = wizard;

  Slime slime = Slime('100');

  wizard.fireball(slime);

  // as 바로 쓰는 것 위험!!
  // (character as Wizard).fireball(slime);

  // is 로 체크하면 smart cast
  if (character is Wizard) {
    character.fireball(slime);
  }
}

class Wizard extends Character {
  Wand? wand;
  int mp = 100;

  Wizard(super.name, super.hp);

  void heal(Hero hero) {
    hero.hp += 10;
  }

  @override
  void attack(Slime slime) {
    slime.hp -= 20;
  }

  void fireball(Slime slime) {
    slime.hp -= 50;
    mp -= 20;
  }
}

class Wand {
  String name;
  double power;

  Wand(this.name, this.power);
}
