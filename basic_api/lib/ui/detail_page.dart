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
          Hero(
            tag: productModel.images[0],
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network('${productModel.images[0]}'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(productModel.title),
                SizedBox(height: 5),
                Divider(color: Colors.black),
                Text(
                  productModel.description,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
