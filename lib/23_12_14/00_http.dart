import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  getSample();
}

void postSample() async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: {
      "userId": "2",
      "title": "바보야",
      "body": "adfasdfads",
    },
  );

  print(response.statusCode);

  final jsonString = response.body;

  Map<String, dynamic> json = jsonDecode(jsonString);

  print(json.toString());
}

void getSample() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  final jsonString = response.body;

  print(response.statusCode);

  Map<String, dynamic> json = jsonDecode(jsonString);

  print(json['title']);
}
