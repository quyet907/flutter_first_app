import 'package:flutter_application_2/models/base/paging.dart';
import 'package:flutter_application_2/models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class BaseService {
  var client = http.Client();
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Future<Paging<Product>?> list() async {
  //   // Await the http get response, then decode the json-formatted response.
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var jsonResponse =
  //         convert.jsonDecode(response.body) as Map<String, dynamic>;

  //     var paging = Paging.fromJson(jsonResponse);
  //     return;
  //   } else {
  //     return null;
  //   }
  // }
}
