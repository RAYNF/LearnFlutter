import 'package:basic_api/data/model/news_model.dart';
import 'package:basic_api/ui/detail_page.dart';
import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final ProductModel article;
  const CardArticle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Hero(
          tag: article.images[1],
          child: Image.network(
            '${article.images[1]}',
            width: 100,
          ),
        ),
        title: Text(article.title),
        subtitle: Text(article.price.toString()),
        onLongPress: () async {
          Navigator.pushNamed(context, DetailPage.routeName,
              arguments: article);
        },
      ),
    );
  }
}
