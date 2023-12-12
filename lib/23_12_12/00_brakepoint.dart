import '../game/hero.dart';

void main() {
  final heroes = <Hero>{};
  final h1 = Hero(name: '슈퍼맨', hp: 100);
  final h2 = Hero(name: '슈퍼맨', hp: 100);

  heroes.add(h1);

  print('-----------');

  myFunction();

  heroes.remove(h2);
}

void myFunction() {
  print('-----------');
  print('-----------');
  print('-----------');
  print('-----------');
}