class Slime {
  int hp;
  final int level = 10;

  Slime(this.hp);

  void attack() {
    final person = _Person();
  }
}

void main() {
  Slime slime1 = Slime(100); // 1
  Slime slime2 = Slime(100); // 2

  // true: O, false: X
  print(slime1 == slime2);
}

class _Person {}
