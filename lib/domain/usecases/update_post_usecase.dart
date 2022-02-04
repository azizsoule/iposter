import 'package:djamo_todo_app/core/resources/response.dart';
import 'package:djamo_todo_app/core/usecases/usecase.dart';
import 'package:djamo_todo_app/domain/entities/post.dart';
import 'package:djamo_todo_app/domain/repositories/post_repository.dart';

class UpdatePostUseCase implements UseCase<Response<Post>, Post> {

  final PostRepository _postRepository;

  const UpdatePostUseCase(this._postRepository);

  @override
  Future<Response<Post>> call(Post params) {
    return _postRepository.updatePost(params);
  }

}