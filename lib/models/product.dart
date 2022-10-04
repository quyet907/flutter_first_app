import 'package:flutter_application_2/models/base/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  int? id;
  String name;
  String description;
  List<String> images;
  double price;

  Product({
    this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

List<Product> products = [
  Product(
    name: "iPhone 9",
    description: "An apple mobile which is nothing like apple",
    price: 549,
    images: ["https://dummyjson.com/image/i/products/1/1.jpg"],
  ),
  Product(
    name: "iPhone X",
    description:
        "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
    price: 899,
    images: ["https://dummyjson.com/image/i/products/2/thumbnail.jpg"],
  ),
  Product(
    name: "Samsung Universe 9",
    description:
        "Samsung's new variant which goes beyond Galaxy to the Universe",
    price: 1249,
    images: ["https://dummyjson.com/image/i/products/3/thumbnail.jpg"],
  ),
];
