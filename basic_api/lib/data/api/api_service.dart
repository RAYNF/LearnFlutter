import 'dart:convert';

import 'package:basic_api/data/model/news_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const String _baseUrl = 'https://newsapi.org/v2/';
    static const String _apiKey = '292d4abd2be24c739a2e4b6c2f5bae75';
  static const String _category = 'business';
  static const String _country = 'us';

  Future<ArticleResult> GetNews() async{
     final response = await http.get(Uri.parse("${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if(response.statusCode == 200){
      //rubah json menjadi factory 
      return ArticleResult.fromJson(json.decode(response.body));
    }else{
      throw Exception('failed to load');
    }
  }
}