// serialization, deserialization
// 직렬화, 역직렬화

import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department({
    required this.name,
    required this.leader,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader,
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'] as String,
      leader: map['leader'] as Employee,
    );
  }
}

void main() {
  final employee = Employee(name: '홍길동', age: 41);
  final department = Department(name: '총무부', leader: employee);

  department.leader = employee;

  final map = department.toJson();

  final Employee leader = map['leader'];

  print(leader);

  print(jsonEncode(department));
}
