import 'package:flutter_application_2/controllers/base_controller.dart';
import 'package:flutter_application_2/models/base/paging.dart';
import 'package:flutter_application_2/models/post.dart';
import 'package:flutter_application_2/models/product.dart';
import 'package:http/http.dart' as http;

class ProductController extends BaseController<Product> {
  ProductController()
      : super(
          host: "http://localhost:5001",
          path: "",
          fromJsonT: (json) => Product.fromJson(json),
          toJsonT: (product) => product.toJson(),
        );
}
