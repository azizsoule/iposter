import 'package:djamo_todo_app/src/domain/entities/post.dart';

class PostModel extends Post {
  PostModel({
      int? userId,
      int? id,
      String? title,
      String? body,}) : super(
    userId: userId, id: id, title: title, body: body
  );

  PostModel.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

}