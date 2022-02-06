import 'package:djamo_todo_app/src/presentation/controllers/add_post_controller.dart';
import 'package:djamo_todo_app/src/presentation/controllers/post_details_controller.dart';
import 'package:djamo_todo_app/src/presentation/controllers/posts_controller.dart';
import 'package:get/get.dart';

class PostsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<PostsController>(PostsController());
  }
}

class PostDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<PostDetailsController>(PostDetailsController());
  }
}

class AddPostBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<AddPostController>(AddPostController());
  }
}