void main() {
  final List<int> nums = [2, 1, 4, 3, 6, 5];
  nums.sort((a, b) => a.compareTo(b) * -1);

  // nums.sort((a, b) {
  //   if (a > b) {
  //     return 1;
  //   } else if (b > a) {
  //     return -1;
  //   } else {
  //     return 0;
  //   }
  // });
  print(nums);

  final List<String> names = ['홍길동', '김두한', '홍길동'];
  names.sort();
  print(names);

  final List<Person> people = [
    Person('홍길동', 10),
    Person('김두한', 5),
    Person('홍길동', 100),
  ];
  people.sort();
  print(people);
}

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }

  @override
  int compareTo(Person other) {
    final nameEqual = name.compareTo(other.name);

    if (nameEqual == 0) {
      return -age.compareTo(other.age);
    }

    return nameEqual;
  }
}
