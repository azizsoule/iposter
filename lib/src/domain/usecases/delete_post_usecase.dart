import 'package:djamo_todo_app/src/core/resources/response.dart';
import 'package:djamo_todo_app/src/core/usecases/usecase.dart';
import 'package:djamo_todo_app/src/domain/entities/post.dart';
import 'package:djamo_todo_app/src/domain/repositories/post_repository.dart';

class DeletePostUseCase implements UseCase<ApiResponse<Post>, int> {

  final PostRepository _postRepository;

  const DeletePostUseCase(this._postRepository);

  @override
  Future<ApiResponse<Post>> call(int params) {
    return _postRepository.deletePost(params);
  }

}