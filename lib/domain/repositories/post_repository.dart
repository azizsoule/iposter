import 'package:djamo_todo_app/core/resources/response.dart';
import 'package:djamo_todo_app/domain/entities/post.dart';

abstract class PostRepository {

  Future<Response<List<Post>>> getAllPosts();

  Future<Response<Post>> createPost(Post post);

  Future<Response<Post>> deletePost(int postId);

  Future<Response<Post>> updatePost(Post post);

}