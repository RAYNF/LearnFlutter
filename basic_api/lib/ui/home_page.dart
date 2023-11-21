import 'package:basic_api/data/api/api_service.dart';
import 'package:basic_api/data/model/news_model.dart';
import 'package:basic_api/widget/card_article.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<ArticleResult> _article;

  void initState() {
    super.initState();
    _article = ApiService().GetNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder<ArticleResult>(
        future: _article,
        builder: (context, AsyncSnapshot<ArticleResult> snapshot) {
          var state = snapshot.connectionState;
          if (state != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data?.articles.length,
                  itemBuilder: (context, index) {
                    var article = snapshot.data?.articles[index];
                    return  
                    
                    CardArticle(article: article!);
                  });
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Material(
                child: Text('error'),
              );
            }
          }
        },
      ),
    );
    
   
  }
}
