import 'package:djamo_todo_app/core/resources/response.dart';
import 'package:djamo_todo_app/core/usecases/usecase.dart';
import 'package:djamo_todo_app/domain/entities/post.dart';
import 'package:djamo_todo_app/domain/repositories/post_repository.dart';

class CreatePostUseCase implements UseCase<ApiResponse<Post>, Post> {

  final PostRepository _postRepository;

  const CreatePostUseCase(this._postRepository);

  @override
  Future<ApiResponse<Post>> call(Post params) {
    return _postRepository.createPost(params);
  }

}