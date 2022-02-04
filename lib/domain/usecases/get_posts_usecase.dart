import 'package:djamo_todo_app/core/resources/response.dart';
import 'package:djamo_todo_app/core/usecases/usecase.dart';
import 'package:djamo_todo_app/domain/entities/post.dart';
import 'package:djamo_todo_app/domain/repositories/post_repository.dart';

class GetPostsUseCase implements UseCase<ApiResponse<List<Post>>, void> {

  final PostRepository _postRepository;

  const GetPostsUseCase(this._postRepository);

  @override
  Future<ApiResponse<List<Post>>> call(params) {
    return _postRepository.getAllPosts();
  }

}