import 'package:learn_dart_together/game/character.dart';
import 'package:learn_dart_together/game/monster.dart';

class Slime extends Monster {
  final int level = 10;

  final String suffix;

  Slime(this.suffix);

  void attack(Character character) {
    if (character.hp < 1) {
      return;
    }
  }

  @override
  void run() {
    print('222222222222');
  }
}

void main() {
  Slime slime1 = Slime('100'); // 1
  Monster slime2 = Slime('100'); // 2

  slime1.run();
  slime2.run();
}

class _Person {}
