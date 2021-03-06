import 'package:djamo_todo_app/src/core/resources/response.dart';
import 'package:djamo_todo_app/src/domain/entities/post.dart';

abstract class PostRepository {

  Future<ApiResponse<List<Post>>> getAllPosts();

  Future<ApiResponse<Post>> createPost(Post post);

  Future<ApiResponse<Post>> deletePost(int postId);

  Future<ApiResponse<Post>> updatePost(Post post);

}