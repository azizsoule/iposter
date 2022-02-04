import 'package:djamo_todo_app/core/utils/constants.dart';
import 'package:djamo_todo_app/data/models/post_model.dart';
import 'package:get/get.dart';

abstract class PostApiService extends GetConnect {

  @override
  void onInit() {
    httpClient.baseUrl = kBaseUrl;
    //httpClient.addRequestModifier((request) {
    //  request.headers = {'Content-type': 'application/json; charset=UTF-8'};
    //  return request;
    //});
    super.onInit();
  }

  Future<Response<List<PostModel>>> getAllPosts();

  Future<Response<PostModel>> createPost(PostModel postModel);

  Future<Response<PostModel>> updatePost(PostModel postModel);

  Future<Response> deletePost(int postId);

}