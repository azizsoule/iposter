import 'package:djamo_todo_app/src/data/models/post_model.dart';
import 'package:get/get.dart';

abstract class PostApiService {

  Future<Response<List<PostModel>>> getAllPosts();

  Future<Response<PostModel>> createPost(PostModel postModel);

  Future<Response<PostModel>> updatePost(PostModel postModel);

  Future<Response> deletePost(int postId);

}