void main() {
  // print(10.hashCode);
  // print(9.hashCode);
  //
  // print('a'.hashCode);
  // print('b'.hashCode);

  // final numSet = {10, 10, 10};
  // print(numSet.length);

  // 동등성 비교
  print(Person('a').hashCode);
  print(Person('a').hashCode);
  print(Person('a').hashCode);
  print(Person('a').hashCode);

  final p1 = Person('a');
  final p2 = Person('a');

  print(p1 == p2);
}

class Person {
  String name;

  Person(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
