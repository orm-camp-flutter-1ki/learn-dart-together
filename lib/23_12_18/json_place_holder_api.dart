import 'package:http/http.dart' as http;

class JsonPlaceHolderApi {
  Future<http.Response> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    return response;
  }
}
