import 'package:learn_dart_together/game/character.dart';
import 'package:learn_dart_together/game/slime.dart';

class PoisonSlime extends Slime {
  int _poisonAttackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Character character) {
    super.attack(character);

    if (_poisonAttackCount > 0) {
      final int damage = character.hp ~/ 5;
      character.hp -= damage;
      _poisonAttackCount--;

      print('추가로, 독포자를 살포했다!');
      print('$damage 포인트 데미지');
    }
  }
}
