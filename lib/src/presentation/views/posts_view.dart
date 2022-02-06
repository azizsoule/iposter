import 'package:djamo_todo_app/src/presentation/controllers/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsView extends GetView<PostsController> {

  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts"),),
      body: Obx(() {
        if (controller.isLoading) {
          return loadingBody();
        } else {
          if (controller.posts == null) {
            return errorBody();
          } else {
            if (controller.posts!.isEmpty) {
              return emptyBody();
            } else {
              return successBody();
            }
          }
        }
      }),
    );
  }

  Widget loadingBody() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget errorBody() {
    return Center(
      child: Column(
        children: const [
          Icon(
            Icons.block,
            color: Colors.red,
            size: 30,
          ),
          SizedBox(height: 10,),
          Text("Une erreur est survenue"),
        ],
      ),
    );
  }

  Widget successBody() {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      itemBuilder: (_, index) => ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onTap: () => controller.onPostTap(index),
        leading: const Icon(Icons.fiber_new_sharp, size: 30,),
        title: Text(controller.posts![index].title ?? ""),
        subtitle: SizedBox(height: 25, child: Text(controller.posts![index].body ?? "", overflow: TextOverflow.clip,),),
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 20,),
      itemCount: controller.posts!.length,
    );
  }

  Widget emptyBody() {
    return Center(
      child: Column(
        children: const [
          Icon(
            Icons.wysiwyg_outlined,
            color: Colors.grey,
            size: 30,
          ),
          SizedBox(height: 10,),
          Text("Auncun post pour l'instant"),
        ],
      ),
    );
  }

}