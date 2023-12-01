import 'dart:math';

void main() {
  Cleric cleric = Cleric("yj");
  print("${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");

  cleric.mp = 10;

  int sec = 3;
  int recoveryMp = cleric.pray(sec);
  print("$sec초 기도 후 ${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");

  print("실제 회복 mp: $recoveryMp");

  cleric.selfAid();
  print("selfAid 이후 ${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");
}

class Cleric {
  String name;
  final int maxHP = 50;
  final int maxMP = 10;

  int hp = 50;
  int mp = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    }
  }

  int pray(int sec) {
    Random random = Random();
    // mp += sec + random.nextInt(3);

    final int beforeMp = mp;

    final int recoveryMp = sec + random.nextInt(3);
    // mp = mp + recoveryMp;
    mp += recoveryMp;

    if (mp > maxMP) {
      mp = maxMP;
    }

    final int realRecoveryMp = mp - beforeMp;

    return realRecoveryMp;
  }

  // int pray(int sec) {
  //   print('$name 은(는) pray 를 시전 하였다.');
  //
  //   if (sec == 0) {
  //     print('그러나 정성이 부족 하였다.');
  //     return 0;
  //   }
  //
  //   int ret = (Random().nextInt(3) + sec);
  //   if (MAX_OF_MP < ret) {
  //     ret = MAX_OF_MP;
  //   }
  //
  //   mp += ret;
  //
  //   if (MAX_OF_MP < mp) {
  //     mp = MAX_OF_MP;
  //   }
  //
  //   print('$name 은(는) $sec 초의 기도 끝에 $ret 만큼 MP 를 회복 하였다. 현재 mp $mp');
  //
  //   return ret;
  // }
}

void aaa() {}

void bbb(int a) {}

int ccc() => 1;

// f(x) = 2 * x
int x = 10;
int y = plusTwo(x);

// block body, expression body 전환 가능
int plusTwo(int x) {
  return 2 + x;
}

// lambda expression : 람다식
// expression body 전환 가능
// 화살표 표기법
int plusTwo2(int x) => 2 + x;
