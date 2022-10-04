// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int?,
      name: json['name'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'price': instance.price,
    };
