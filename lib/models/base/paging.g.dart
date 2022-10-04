// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paging<T> _$PagingFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    Paging<T>(
      page: json['page'] as int? ?? 1,
      pageSize: json['pageSize'] as int? ?? 10,
      rows:
          (json['rows'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
      totalPage: json['totalPage'] as int? ?? 1,
      total: json['total'] as int? ?? 0,
    );

Map<String, dynamic> _$PagingToJson<T>(
  Paging<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'rows': instance.rows.map(toJsonT).toList(),
      'totalPage': instance.totalPage,
      'total': instance.total,
    };
