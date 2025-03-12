import 'package:flutter/material.dart';
import 'package:weatherapp/views/homepageview.dart';
import 'package:weatherapp/views/searchview.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'Searchview': (context) => Searchview()},
      initialRoute: 'Homepageview',
      home: Homepageview(),
    );
  }
}
