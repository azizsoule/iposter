import 'package:djamo_todo_app/data/datasources/remote/post_api_service.dart';
import 'package:djamo_todo_app/data/models/post_model.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class PostApiServiceImpl extends PostApiService {
  
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
    return await get("", decoder: (json) => List<PostModel>.from((json as List<Map<String, dynamic>>).map((e) => PostModel.fromJson(e))));
  }

  @override
  Future<Response<PostModel>> updatePost(PostModel postModel) async {
    return await put("", postModel.toJson(), decoder: (json) => PostModel.fromJson(json));
  }
  
}