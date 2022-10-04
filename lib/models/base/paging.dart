import 'package:flutter_application_2/models/product.dart';
import 'package:json_annotation/json_annotation.dart';
part 'paging.g.dart';

@JsonSerializable(genericArgumentFactories: true, explicitToJson: true)
class Paging<T> {
  int page;
  int pageSize;
  List<T> rows;
  int totalPage;
  int total;

  Paging({
    this.page = 1,
    this.pageSize = 10,
    this.rows = const [],
    this.totalPage = 1,
    this.total = 0,
  });

  factory Paging.fromJson(
          Map<String, dynamic> json, T Function(dynamic json) fromJsonT) =>
      _$PagingFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) =>
      _$PagingToJson(this, toJsonT);
}
