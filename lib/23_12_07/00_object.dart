import 'package:learn_dart_together/game/hero.dart';

void main() {
  // runtime
  dynamic dynamicVar = Hero(name: 'name', hp: 100);
  int i = 10;
  dynamicVar = 1;

  // compile
  Hero object = Hero(name: 'name', hp: 100);
  print(object);

  final heroes = <Hero>{};

  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heroes.add(h1);
  print(heroes.length); // 1

  heroes.add(h2);
  print(heroes.length); // 2

  // final set = {'1', '1', '1'};
  // print(set.length);

  print(h1 == h2); // true

  print(object.hashCode);
  print(object.name.hashCode);
}
