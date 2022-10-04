import 'dart:convert';

import 'package:flutter_application_2/models/base/paging.dart';
import 'package:http/http.dart' as http;

class BaseController<T> {
  var client = http.Client();
  String host;
  String path;

  T Function(dynamic json) fromJsonT;
  Object Function(T value) toJsonT;

  BaseController({
    required this.host,
    required this.path,
    required this.fromJsonT,
    required this.toJsonT,
  });

  Future<Paging<T>> list() async {
    var uri = Uri.parse("$host/$path");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = jsonDecode(response.body);
      return Paging.fromJson(jsonMap, fromJsonT);
    }

    return Paging();
  }
}
