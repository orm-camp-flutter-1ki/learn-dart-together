import 'dart:math';

import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

var transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print(transactions.where((e) => e.year == 2011)
        .sorted((a, b) => a.value.compareTo(b.value))
        .map((e) => e.trader.name)
        .toSet()
        .toList()
        .length);

  // sexy
  print(transactions.map((e) => e.value).max);

  // 복고
  print(transactions.map((e) => e.value).reduce(max));



  final result = transactions
      .where((e) => e.year == 2011)
      .map((e) => e.value)
      .max;

  final maxNum = max(10, 20);
  // print(transactions.where((e) => e.year == 2011).toList().length);

  // print(transactions.map((e) => e.trader.name).toSet().toList());


  final person = Person();

  ((person
      ..hello())..bye());
}

class Person {
  void hello() {

  }

  void bye() {

  }
}
