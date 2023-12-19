import 'dart:convert';

import 'package:learn_dart_together/23_12_18/json_place_holder_api.dart';
import 'package:learn_dart_together/23_12_18/post.dart';
import 'package:learn_dart_together/23_12_18/post_repository.dart';
import 'package:http/http.dart' as http;

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
