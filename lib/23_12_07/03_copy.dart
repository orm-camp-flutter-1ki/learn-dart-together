void main() {
  print(Person('a', 10) == Person('a', 10));

  final p1 = Person('a', 10);

  final clone = Person(p1.name, p1.age);

  print(p1 == clone);

  final p2 = p1.copyWith();
  print(p1 == p2);

  final p3 = p1.copyWith(name: 'b');
  print(p3);

  final p4 = p1.copyWith(age: 50);
  print(p4);

  final p5 = p1.copyWith(name: 'c', age: 90);
  print(p5);
}

class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
