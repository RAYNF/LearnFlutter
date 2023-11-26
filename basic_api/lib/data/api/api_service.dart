import 'dart:convert';

import 'package:basic_api/data/model/model_post.dart';
import 'package:basic_api/data/model/model_request.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://api.escuelajs.co/api/v1/products/';

  Future<List<ProductModel>> GetNews() async {
    final response = await http.get(Uri.parse("${_baseUrl}"));

    if (response.statusCode == 200) {
      //rubah json menjadi factory
      List<ProductModel> listData = List<ProductModel>.from(
          json.decode(response.body).map((x) => ProductModel.fromJson(x)));
      return listData;
    } else {
      throw Exception(response.statusCode.toString());
    }
  }

  Future<ProductModel> create(ProductsRequestModel model) async {
    final response = await http.post(Uri.parse('${_baseUrl}'),
        body: model.toJson(), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 201) {
      return ProductModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode.toString());
    }
  }


  Future<ProductsRequestModel> update(ProductsRequestModel model, int id) async {
    final response = await http.put(Uri.parse('$_baseUrl$id'),
        headers: {'Content-Type': 'application/json'},
        body: model.toJson());
    if (response.statusCode == 200) {
      return ProductsRequestModel.fromJson(response.body);
    } else {
      throw Exception(response.statusCode.toString());
    }
  }

  // Future<ProductModel> update(String title, int price, String description,
  //     int categoryId, String images) async {
  //   final response = await http.put(Uri.parse('$_baseUrl/$categoryId'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8'
  //       },
  //       body: jsonEncode(<String, String>{
  //         'categoryId': categoryId.toString(),
  //         'tittle': title,
  //         'price': price.toString(),
  //         'description': description,
  //         'images': images
  //       }));
  //   if (response.statusCode == 200) {
  //     return ProductModel.fromJson(jsonDecode(response.body));
  //   } else {
  //     throw Exception(response.statusCode.toString());
  //   }
  // }

//masih bug
  Future<ProductsRequestModel> delete(int id) async {
    final http.Response response = await http.delete(
      Uri.parse('$_baseUrl$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      return ProductsRequestModel.fromJson(response.body);
    } else {
      throw Exception(response.statusCode.toString());
    }
  }
}


//error post
  // Future<ProductModel> create(String title, int price, String description,
  //     int categoryId, String images) async {
  //   final reponse = await http.post(Uri.parse('${_baseUrl}'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json',
  //       },
  //       body: jsonEncode(<String, dynamic>{
  //         'title': title,
  //         'price': price,
  //         'description': description,
  //         'categoryId': categoryId,
  //         'images': images
  //       }));
  //   if (reponse.statusCode == 201) {
  //     return ProductModel.fromJson(jsonDecode(reponse.body));
  //   } else {
  //     throw Exception(reponse.statusCode.toString());
  //   }
  // }