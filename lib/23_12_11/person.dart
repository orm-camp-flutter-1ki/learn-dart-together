class Person {
  String name;
  String email;

  Person({
    required this.name,
    required this.email,
  });

  factory Person.fromJson(dynamic json) {
    return Person(
      name: json['name'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    return map;
  }
}
