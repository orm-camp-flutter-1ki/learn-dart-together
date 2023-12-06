import 'package:learn_dart_together/game/monster.dart';

class Slime extends Monster {
  int hp;
  final int level = 10;

  Slime(this.hp);

  void attack() {
    final person = _Person();
  }

  @override
  void run() {
    print('222222222222');
  }
}

void main() {
  Slime slime1 = Slime(100); // 1
  Monster slime2 = Slime(100); // 2

  slime1.run();
  slime2.run();
}

class _Person {}
