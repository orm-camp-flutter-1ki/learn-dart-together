import 'dart:io';

void main() async {
  final File inputFile = File('11/sample.csv');
  final File outputFile = File('11/sample_copy.csv');

  String text = await inputFile
      .readAsString()
      .catchError((e) {
        print('Reading file error');
        return 'true';
      });
  const String srchStr = '한석봉';

  if (text.contains(srchStr)) {
    text = text.replaceAll(srchStr, '김석봉');
  }

  await outputFile
      .writeAsString(text)
      .catchError((e) {
        print('Writing file error');
      });
}