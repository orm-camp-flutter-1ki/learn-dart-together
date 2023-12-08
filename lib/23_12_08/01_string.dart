void main() {
  String s = 'hello'; // new  : 100
  String s1 = 'hello'; // new : 200

  print(s.hashCode);
  print(s1.hashCode);

  s += ' world'; // new 'hello world' : 300

  // print(s.hashCode);

  // String 인스턴스 갯수
  for (int i = 0; i < 100; i++) {
    s += '$i';
  }

  StringBuffer buffer = StringBuffer('Dart');
  print(buffer.hashCode);

  buffer.write(' and');
  buffer.write(' Flutter');
  print(buffer.toString());

  print(buffer.hashCode);
}
