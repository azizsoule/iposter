import 'package:djamo_todo_app/src/data/datasources/remote/post_api_service.dart';
import 'package:djamo_todo_app/src/data/datasources/remote/post_api_service_impl.dart';
import 'package:djamo_todo_app/src/data/repositories/post_repository_impl.dart';
import 'package:djamo_todo_app/src/domain/repositories/post_repository.dart';
import 'package:djamo_todo_app/src/domain/usecases/create_post_usecase.dart';
import 'package:djamo_todo_app/src/domain/usecases/delete_post_usecase.dart';
import 'package:djamo_todo_app/src/domain/usecases/get_posts_usecase.dart';
import 'package:djamo_todo_app/src/domain/usecases/update_post_usecase.dart';
import 'package:get/get.dart';

final injector = Get;

void initializeDependencies() {

  // Dependencies
  injector.put<PostApiService>(PostApiServiceImpl(), permanent: true);
  injector.put<PostRepository>(PostRepositoryImpl(injector.find()), permanent: true);

  // Use Cases
  injector.put<GetPostsUseCase>(GetPostsUseCase(injector.find()), permanent: true);
  injector.put<CreatePostUseCase>(CreatePostUseCase(injector.find()), permanent: true);
  injector.put<DeletePostUseCase>(DeletePostUseCase(injector.find()), permanent: true);
  injector.put<UpdatePostUseCase>(UpdatePostUseCase(injector.find()), permanent: true);

}