import 'package:djamo_todo_app/src/core/resources/response.dart';
import 'package:djamo_todo_app/src/domain/entities/post.dart';
import 'package:djamo_todo_app/src/domain/usecases/get_posts_usecase.dart';
import 'package:djamo_todo_app/src/injector.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {

  final GetPostsUseCase _getPostsUseCase = injector.find();

  final Rx<List<Post>?> _posts = Rx([]);

  final Rx<bool> _isLoading = Rx(true);

  List<Post>? get posts => _posts.value;

  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();
    _getPosts();
  }

  void _getPosts() async {
    final apiResponse = await _getPostsUseCase(null);

    if (apiResponse is SuccessResponse && apiResponse.data!.isNotEmpty) {
      _posts.value = apiResponse.data as List<Post>;
    }

    if (apiResponse is ErrorResponse) {
      _posts.value = null;
    }

    _isLoading.toggle();
  }

  void onPostTap(int index) {
    Get.toNamed("/post-details", arguments: posts![index]);
  }

}