import 'package:djamo_todo_app/core/resources/response.dart';
import 'package:djamo_todo_app/core/usecases/usecase.dart';
import 'package:djamo_todo_app/domain/entities/post.dart';
import 'package:djamo_todo_app/domain/repositories/post_repository.dart';

class DeletePostUseCase implements UseCase<Response<Post>, int> {

  final PostRepository _postRepository;

  const DeletePostUseCase(this._postRepository);

  @override
  Future<Response<Post>> call(int params) {
    return _postRepository.deletePost(params);
  }

}