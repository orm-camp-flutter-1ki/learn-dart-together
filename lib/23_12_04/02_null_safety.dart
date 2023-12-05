// ignore_for_file: avoid_print

// ignore: slash_for_doc_comments
/**
 *
    1장의 연습문제에서 작성한 Cleric클래스에 관하여, 2가지 수정을 행하시오. ㅇ
    현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다.
    하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
    그래서, 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유

    2. 아래의 방침에 따라, 생성자를 추가 하시오
    A) 이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다 ㅇ
    B) 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다. 이 때, MP는 최대 MP와 같은 값이 초기화 된다 ㅇ
    C) 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다. 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다 ㅇ
    D) 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다. (이름이 없는 성직자는 존재 할 수 없음) ㅇ
    E) 생성자는 가능한 한 중복되는 코드가 없도록 작성한다 ??
 */

import 'dart:math';

class Cleric1201 {
  /// 1. maxHp, maxMp 가 각각의 정보를 가지지않고 정적 변수로 선언
  static int maxHp = 50;
  static int maxMp = 10;

  /// 2-A 이름, hp, mp 을 지정하여 인스턴스화 가능
  String name;
  int? _hp;
  int? _mp;

  int get hp => _hp ?? 0;
  int get mp => _mp ?? 0;

  Cleric1201.all({
    required this.name,
    required int? hp,
    required int? mp,
  })  : _mp = mp,
        _hp = hp;

  Cleric1201.noMp({
    required this.name,
    required int? hp,
  })  : _hp = hp,
        _mp = maxMp;

  Cleric1201.yesName({
    required this.name,
  })  : _hp = maxHp,
        _mp = maxMp;

  /// 2-C 이름만을 지정하여 인스턴스화 가능

  void selfAid() {
    if (_mp == null || mp < 5) {
      return;
    }

    _mp = mp - 5;
    _hp = maxHp;
  }

  int pray(int sec) {
    final beforeMp = mp;

    final recoveryMp = sec + Random().nextInt(3);

    _mp = mp ?? 0 + recoveryMp;

    if (mp > maxMp) {
      _mp = maxMp;
    }

    return beforeMp - mp;
  }

  void showInfo() {
    print('cleric name : $name hp : $_hp mp : $mp ');
  }
}

void main() {
  final cle1 = Cleric1201.all(name: 'Aseosu', hp: 30, mp: 5);
  cle1.showInfo();

  final cle2 = Cleric1201.noMp(name: 'Aseosu', hp: 20);
  cle2.showInfo();

  final cle3 = Cleric1201.yesName(name: 'Aseosu');
  cle3.showInfo();

  cle1._mp = null;
  cle1.selfAid();

  cle1.pray(1);
}
