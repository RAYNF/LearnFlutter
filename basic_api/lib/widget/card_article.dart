import 'package:basic_api/data/model/model_request.dart';
import 'package:basic_api/ui/detail_page.dart';
import 'package:basic_api/ui/edit_page.dart';
import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final ProductModel productModel;
  const CardArticle({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Hero(
          tag: productModel.images[0],
          child: Image.network(
            '${productModel.images[0]}',
            width: 100,
          ),
        ),
        title: Text(productModel.title),
        subtitle: Text(productModel.price.toString()),
        onLongPress: () async {
          Navigator.pushNamed(context, DetailPage.routeName,
              arguments: productModel);

        
        },
      ),
    );
  }
}
