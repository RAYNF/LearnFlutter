import 'package:basic_api/data/model/model_request.dart';
import 'package:basic_api/ui/edit_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final ProductModel productModel;
  const DetailPage({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, UpdatePage.routeName,arguments: productModel);
          }, icon: Icon(Icons.edit))
        ],
      ),
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
