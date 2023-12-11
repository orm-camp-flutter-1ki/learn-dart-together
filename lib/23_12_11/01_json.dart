import 'dart:convert';
import 'dart:io';

void main() {
  final json = {
    "name": "John Smith",
    "email": "john@example.com",
    "age": 10,
  };

  print(json.runtimeType);

  final user = User(name: 'aaa', email: 'bbb', age: 10);
  print(user.toJson());

  User user2 = User.fromJson({
    'name': '슈퍼맨',
    'email': 'aaaa',
    'age': 10,
  });

  print(user2.toJson());

  File file = File('user.txt');
  // file.writeAsStringSync(jsonEncode(user2.toJson()));

  String userJson = file.readAsStringSync();
  print(userJson);

  User user3 = User.fromJson(jsonDecode(userJson));

  print(user3.toString());
}

class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }

  // 역직렬화
  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      age: map['age'] ?? 0,
    );
  }

  @override
  String toString() {
    return 'User{name: $name, email: $email, age: $age}';
  }
// 직렬화
// Map<String, dynamic> toJson() {
//   return {
//     'name': name,
//     'email': email,
//     'age': age,
//   };
// }
}
