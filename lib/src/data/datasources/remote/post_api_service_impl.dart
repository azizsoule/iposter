import 'package:djamo_todo_app/src/core/utils/constants.dart';
import 'package:djamo_todo_app/src/data/datasources/remote/post_api_service.dart';
import 'package:djamo_todo_app/src/data/models/post_model.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class PostApiServiceImpl extends GetConnect implements PostApiService {

  @override
  void onInit() {
    httpClient.baseUrl = kBaseUrl;
    super.onInit();
  }
  
  @override
  Future<Response<PostModel>> createPost(PostModel postModel) async {
    return await post("", postModel.toJson(), decoder: (json) => PostModel.fromJson(json));
  }

  @override
  Future<Response> deletePost(int postId) async {
    return await delete("/$postId");
  }

  @override
  Future<Response<List<PostModel>>> getAllPosts() async {
    return await get("", decoder: (json) => List<PostModel>.from(json.map((e) => PostModel.fromJson(e))));
  }

  @override
  Future<Response<PostModel>> updatePost(PostModel postModel) async {
    return await put("", postModel.toJson(), decoder: (json) => PostModel.fromJson(json));
  }
  
}