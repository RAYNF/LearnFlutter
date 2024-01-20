import 'package:flutter/material.dart';
import 'package:provider_basic/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/presentation/provider/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataClass(),
      child: MaterialApp(
        home: const Homepage(),
      ),
      );
  }
}

