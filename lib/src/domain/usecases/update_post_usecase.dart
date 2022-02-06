import 'package:djamo_todo_app/src/core/resources/response.dart';
import 'package:djamo_todo_app/src/core/usecases/usecase.dart';
import 'package:djamo_todo_app/src/domain/entities/post.dart';
import 'package:djamo_todo_app/src/domain/repositories/post_repository.dart';

class UpdatePostUseCase implements UseCase<ApiResponse<Post>, Post> {

  final PostRepository _postRepository;

  const UpdatePostUseCase(this._postRepository);

  @override
  Future<ApiResponse<Post>> call(Post params) {
    return _postRepository.updatePost(params);
  }

}