import 'package:basic_api/data/api/api_service.dart';
import 'package:basic_api/data/model/news_model.dart';
import 'package:basic_api/widget/card_article.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';
   
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late Future<List<ProductModel>> _article;
  late Future<ProductModel> _album;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _categoryIdController = TextEditingController();
  final TextEditingController _imagesController = TextEditingController();

  void initState() {
    super.initState();
    _article = ApiService().GetNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductModel>>(
        future: _article,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var article = snapshot.data![index];
                return Column(
                  children: [
                    CardArticle(productModel: article),
                    ElevatedButton(
                      onPressed: (){
                        _album = ApiService().delete(snapshot.data![index].id.toString());
                    }, child: Icon(Icons.remove))
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Basic dialog title'),
                content: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(hintText: 'title'),
                    ),
                    TextField(
                      controller: _priceController,
                      decoration: InputDecoration(hintText: 'price'),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(hintText: 'description'),
                    ),
                    TextField(
                      controller: _categoryIdController,
                      decoration: InputDecoration(hintText: 'categoryId'),
                    ),
                    TextField(
                      controller: _imagesController,
                      decoration: InputDecoration(hintText: 'images'),
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Disable'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Enable'),
                    onPressed: () {
                     setState(() {
                       _album = ApiService().create(_titleController.text,int.parse(_priceController.text),_descriptionController.text, int.parse(_categoryIdController.text), _imagesController.text);
                     });
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
