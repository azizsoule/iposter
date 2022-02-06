import 'package:djamo_todo_app/src/core/exceptions/exceptions.dart';
import 'package:djamo_todo_app/src/core/resources/response.dart';
import 'package:djamo_todo_app/src/data/datasources/remote/post_api_service.dart';
import 'package:djamo_todo_app/src/data/models/post_model.dart';
import 'package:djamo_todo_app/src/domain/entities/post.dart';
import 'package:djamo_todo_app/src/domain/repositories/post_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

class PostRepositoryImpl implements PostRepository {

  final PostApiService _postApiService;

  const PostRepositoryImpl(this._postApiService);
  
  @override
  Future<ApiResponse<Post>> createPost(Post p) async {
    try {
      final Response response = await _postApiService.createPost(p as PostModel);
      if (response.statusCode == HttpStatus.created) {
        return SuccessResponse<PostModel>(response.body as PostModel);
      } else {
        return const ErrorResponse(UnknownErrorException());
      }
    } on Exception catch (e) {
      return ErrorResponse(e);
    }
  }

  @override
  Future<ApiResponse<Post>> deletePost(int postId) async {
    try {
      final Response response = await _postApiService.deletePost(postId);
      if (response.statusCode == HttpStatus.ok) {
        return SuccessResponse<PostModel>(response.body as PostModel);
      } else {
        return const ErrorResponse(UnknownErrorException());
      }
    } on Exception catch (e) {
      return ErrorResponse(e);
    }
  }

  @override
  Future<ApiResponse<List<Post>>> getAllPosts() async {
    try {
      final Response response = await _postApiService.getAllPosts();
      if (response.statusCode == HttpStatus.ok) {
        return SuccessResponse<List<PostModel>>(response.body as List<PostModel>);
      } else {
        return const ErrorResponse(UnknownErrorException());
      }
    } on Exception catch (e) {
      return ErrorResponse(e);
    }
  }

  @override
  Future<ApiResponse<Post>> updatePost(Post post) async {
    try {
      final Response response = await _postApiService.updatePost(post as PostModel);
      if (response.statusCode == HttpStatus.ok) {
        return SuccessResponse<PostModel>(response.body as PostModel);
      } else {
        return const ErrorResponse(UnknownErrorException());
      }
    } on Exception catch (e) {
      return ErrorResponse(e);
    }
  }

}