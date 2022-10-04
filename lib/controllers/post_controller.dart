import 'package:flutter_application_2/controllers/base_controller.dart';
import 'package:flutter_application_2/models/post.dart';
import 'package:http/http.dart' as http;

class PostController extends BaseController<Post> {
  PostController()
      : super(
          host: "http://localhost:5001",
          path: "",
          fromJsonT: (json) => Post.fromJson(json),
          toJsonT: (post) => post.toJson(),
        );
}
