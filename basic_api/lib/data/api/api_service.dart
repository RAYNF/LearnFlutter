import 'dart:convert';

import 'package:basic_api/data/model/news_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://api.escuelajs.co/api/v1/products';

  Future<List<ProductModel>> GetNews() async {
    final response = await http.get(Uri.parse("${_baseUrl}"));

    if (response.statusCode == 200) {
      //rubah json menjadi factory
      List<ProductModel> listData = List<ProductModel>.from(
          json.decode(response.body).map((x) => ProductModel.fromJson(x)));
      return listData;
    } else {
      throw Exception('failed to load');
    }
  }

  Future<ProductModel> create(String title, int price, String description, int categoryId,String images) async {
    final reponse = await http.post(
      Uri.parse('${_baseUrl}'),
      headers: <String,String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String,dynamic>{
       'title' : title, 
       'price' : price,
       'description' : description,
       'categoryId' : categoryId,
       'images' : images
      })
    );
    if(reponse.statusCode == 201){
      return ProductModel.fromJson(jsonDecode(reponse.body));
    }else{
      throw Exception('failed to post');
    }
  }

  Future<ProductModel> delete (String id)async{
    final http.Response response = await http.delete(
      Uri.parse('$_baseUrl/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    ); 
    if(response.statusCode==200){
      return ProductModel.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('failed');
    }

}

}