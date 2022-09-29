import 'package:flutter_application_2/models/base_model.dart';

class Product extends BaseModel {
  String name;
  String description;
  List<String> images;
  double price;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.images,
  });
}
