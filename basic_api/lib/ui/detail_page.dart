import 'package:basic_api/data/model/news_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final ProductModel productModel;
  const DetailPage({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.network('${productModel.images[0]}'),
          )
        ],
      )),
    );
  }
}
