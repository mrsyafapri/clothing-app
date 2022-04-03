import 'package:flutter/material.dart';
import 'package:clothing_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clothing App',
      home: HomePage(),
    );
  }
}
