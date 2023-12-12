import 'dart:io';

void main() {
  copy3('user.txt', 'target.txt');

}

void copy1(String source, String target) {
  final sourceFile = File(source);
  final targetFile = File(target);

  // 읽어서
  final text = sourceFile.readAsStringSync();
  // 쓴다
  targetFile.writeAsStringSync(text);
}

void copy2(String source, String target) {
  // 읽어서 쓴다
  File(target).writeAsStringSync(File(source).readAsStringSync());
}

// sexy code
void copy3(String source, String target) => File(source).copySync(target);
