void main() {
  final stopWatch = Stopwatch()..start();

  test2();

  print(stopWatch.elapsedMilliseconds);
}

void test1() {
  var string = '';

  for (int i = 0; i < 100000; i++) {
    string += i.toString();
  }
}

void test2() {
  var string = StringBuffer('');

  for (int i = 0; i < 100000; i++) {
    string.write(i.toString());
  }
}
