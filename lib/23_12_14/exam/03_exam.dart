import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main() async {
  final bytes = await downloadImage('https://www.naver.com/asdfasdf');
  // print(bytes);
  
  await saveFile(bytes, 'icon.ico');
}

Future<Uint8List> downloadImage(String url) async {
  // return http.readBytes(Uri.parse(url));
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == HttpStatus.ok) {
    print(response.statusCode);
    return response.bodyBytes;
  } else {
    throw http.ClientException('잘못된 url', Uri.parse(url));
  }

}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final file = File(fileName);
  return await file.writeAsBytes(bytes);
}
