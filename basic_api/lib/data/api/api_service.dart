import 'dart:convert';

import 'package:basic_api/data/model/news_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const String _baseUrl = 'https://api.escuelajs.co/api/v1/products/';
 

  Future<List<ProductModel>> GetNews() async{
    
     final response = await http.get(Uri.parse("${_baseUrl}"));
     
    if(response.statusCode == 200){
      //rubah json menjadi factory 
      List<ProductModel> listData = List<ProductModel>.from(
        json.decode(response.body).map((x)=> ProductModel.fromJson(x)));
      return listData;
    }else{
      throw Exception('failed to load');
    }
  }
}