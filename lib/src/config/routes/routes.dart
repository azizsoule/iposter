import 'package:djamo_todo_app/src/core/bindings/bindings.dart';
import 'package:djamo_todo_app/src/core/utils/constants.dart';
import 'package:djamo_todo_app/src/presentation/views/post_details_view.dart';
import 'package:djamo_todo_app/src/presentation/views/posts_view.dart';
import 'package:get/get.dart';

final List<GetPage> kPages = <GetPage>[
  GetPage(name: kInitialRoute, page: () => const PostsView(), binding: PostsBindings()),
  GetPage(name: "/post-details", page: () => const PostDetailsView(), binding: PostDetailBinding()),
];