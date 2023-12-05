import 'slime.dart';

abstract class Character {
  String name;
  int hp;

  Character(this.name, this.hp);

  void run() {
    print('뛰었다');
  }

  void attack(Slime slime);
}
