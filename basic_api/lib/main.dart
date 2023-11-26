import 'package:basic_api/data/model/model_request.dart';
import 'package:basic_api/ui/detail_page.dart';
import 'package:basic_api/ui/home_page.dart';
import 'package:basic_api/ui/edit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        DetailPage.routeName: (context) => DetailPage(
            productModel:
                ModalRoute.of(context)?.settings.arguments as ProductModel),
        UpdatePage.routeName: (context) => UpdatePage(
            productModel:
                ModalRoute.of(context)?.settings.arguments as ProductModel)
      },
    );
  }
}
