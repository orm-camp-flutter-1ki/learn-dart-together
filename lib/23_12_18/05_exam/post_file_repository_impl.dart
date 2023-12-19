import 'dart:convert';
import 'dart:io';

import 'package:learn_dart_together/23_12_18/05_exam/post_repository.dart';
import 'package:learn_dart_together/23_12_18/post.dart';

class PostFileRepositoryImpl implements PostRepository {
  File _file = File('posts.txt');
  List<Post> _posts = [];

  PostFileRepositoryImpl() {
    // getPosts().then((value) => _posts = value);
    _loadPosts();
  }

  Future<void> _loadPosts() async {
    try {
      if (await _file.exists()) {
        _posts = await getPosts();
      } else {
        _posts = [];
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> _savePosts() async {
    String jsonString = jsonEncode(_posts.map((e) => e.toJson()).toList());
    await _file.writeAsString(jsonString);
  }

  @override
  Future<void> addPost(Post post) async {
    _posts.add(post);
    await _savePosts();
  }

  @override
  Future<void> deletePost(Post post) async {
    _posts.remove(post);
    await _savePosts();
  }

  @override
  Future<List<Post>> getPosts() async {
    final jsonStringList = await _file.readAsString();
    final jsonMapIterable = jsonDecode(jsonStringList) as List<dynamic>;
    _posts = jsonMapIterable.map((e) => Post.fromJson(e)).toList();
    return _posts;
  }

  @override
  Future<void> updatePost(Post post) async {
    _posts = _posts.map((e) {
      if (post.id == e.id) {
        return post;
      }
      return e;
    }).toList();
    await _savePosts();
  }
}
