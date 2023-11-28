import 'package:basic_sqflite/data/models/note.dart';
import 'package:basic_sqflite/pages/add_page.dart';
import 'package:basic_sqflite/pages/detail_page.dart';
import 'package:basic_sqflite/pages/edit_page.dart';
import 'package:basic_sqflite/pages/home_page.dart';
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
              note: ModalRoute.of(context)?.settings.arguments as Note,
            ),
        AddPage.routeName: (context) => AddPage(),
        EditPage.routeName :(context) => EditPage(note: ModalRoute.of(context)?.settings.arguments as Note)
      },
    );
  }
}
