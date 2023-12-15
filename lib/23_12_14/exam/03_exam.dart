import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

void main() async {
  final bytes = await downloadImage('https://alimipro.com/favicon.ico');
  // print(bytes);
  
  await saveFile(bytes, 'icon.ico');
}

Future<Uint8List> downloadImage(String url) async {
  // return http.readBytes(Uri.parse(url));
  final response = await http.get(Uri.parse(url));
  print(response.statusCode);
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final file = File(fileName);
  return await file.writeAsBytes(bytes);
}
