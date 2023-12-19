import 'dart:io';

import 'package:learn_dart_together/23_12_18/05_exam/post_file_repository_impl.dart';
import 'package:learn_dart_together/23_12_18/05_exam/post_manager.dart';
import 'package:learn_dart_together/23_12_18/05_exam/post_memory_repository_impl.dart';
import 'package:learn_dart_together/23_12_18/05_exam/post_repository.dart';
import 'package:learn_dart_together/23_12_18/post.dart';
import 'package:test/test.dart';

void main() {
  // 모든 테스트 시작 전에 수행되어야 하는 코드
  // final repository = MockPostRepository();
  // final repository = PostMemoryRepositoryImpl();

  setUp(() async {
  });

  group('memory', () {
    test('Post Manager add Test', () async {
      final repository = PostMemoryRepositoryImpl();
      final postManager = PostManager(repository);

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      postManager.addPost(Post(userId: 1, id: 3, title: 'title3', body: 'body3'));

      var results = await postManager.getPosts();
      expect(results.length, 3);
    });

    test('Post Manager update Test', () async {
      final repository = PostMemoryRepositoryImpl();
      final postManager = PostManager(repository);

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      var results = await postManager.getPosts();
      expect(results[1].title, 'title2');

      await postManager.updatePost(results[1].copyWith(
        title: 'title3',
        body: 'body3',
      ));

      results = await postManager.getPosts();
      expect(results[1].title, 'title3');
      expect(results[1].body, 'body3');

    });

    test('Post Manager delete Test', () async {
      final repository = PostMemoryRepositoryImpl();
      final postManager = PostManager(repository);

      final deletePost = Post(userId: 1, id: 1, title: 'title', body: 'body');
      final deletePostCopy = deletePost.copyWith();

      await postManager.addPost(deletePost);
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      await postManager.deletePost(deletePostCopy);

      var results = await postManager.getPosts();
      expect(results.length, 1);
    });

    test('Post Manager get Test', () async {
      final repository = PostMemoryRepositoryImpl();
      final postManager = PostManager(repository);

      await Future.delayed(Duration(seconds: 1));

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      var results = await postManager.getPosts();
      expect(results.length, 2);

      await postManager.addPost(Post(userId: 1, id: 3, title: 'title3', body: 'body3'));

      results = await postManager.getPosts();
      expect(results.length, 3);
    });

  });

  group('file', () {

    test('Post Manager add Test', () async {
      final repository = PostFileRepositoryImpl();
      final postManager = PostManager(repository);

      await Future.delayed(Duration(seconds: 1));

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      postManager.addPost(Post(userId: 1, id: 3, title: 'title3', body: 'body3'));

      var results = await postManager.getPosts();
      expect(results.length, 3);

      await File('posts.txt').delete();
    });

    test('Post Manager update Test', () async {
      final repository = PostFileRepositoryImpl();
      final postManager = PostManager(repository);

      await Future.delayed(Duration(seconds: 1));

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      var results = await postManager.getPosts();
      expect(results[1].title, 'title2');

      await postManager.updatePost(results[1].copyWith(
        title: 'title3',
        body: 'body3',
      ));

      results = await postManager.getPosts();
      expect(results[1].title, 'title3');
      expect(results[1].body, 'body3');

      await File('posts.txt').delete();
    });

    test('Post Manager delete Test', () async {
      final repository = PostFileRepositoryImpl();
      final postManager = PostManager(repository);

      await Future.delayed(Duration(seconds: 1));

      final deletePost = Post(userId: 1, id: 1, title: 'title', body: 'body');
      final deletePostCopy = deletePost.copyWith();

      await postManager.addPost(deletePost);
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      await postManager.deletePost(deletePostCopy);

      var results = await postManager.getPosts();
      expect(results.length, 1);

      await File('posts.txt').delete();
    });

    test('Post Manager get Test', () async {
      final repository = PostFileRepositoryImpl();
      final postManager = PostManager(repository);

      await Future.delayed(Duration(seconds: 1));

      await postManager.addPost(Post(userId: 1, id: 1, title: 'title', body: 'body'));
      await postManager.addPost(Post(userId: 1, id: 2, title: 'title2', body: 'body2'));

      var results = await postManager.getPosts();
      expect(results.length, 2);

      await postManager.addPost(Post(userId: 1, id: 3, title: 'title3', body: 'body3'));

      results = await postManager.getPosts();
      expect(results.length, 3);

      await File('posts.txt').delete();
    });
  });



  // 모든 테스트 끝날 때 수행
  tearDown(() {

  });
}

class MockPostRepository implements PostRepository {
  List<Post> _posts = [];

  @override
  Future<void> addPost(Post post) async {
    _posts.add(post);
  }

  @override
  Future<void> deletePost(Post post) async {
    _posts.remove(post);
  }

  @override
  Future<List<Post>> getPosts() async {
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
  }

}
