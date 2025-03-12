import 'package:flutter/material.dart';
import 'package:weatherapp/views/homepageview.dart';
import 'package:weatherapp/views/searchview.dart';
import 'package:weatherapp/views/weatherinfobody.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'Searchview': (context) => Searchview(),
      'Weatherinfobody':(context)=>Weatherinfobody()},
      initialRoute: 'Homepageview',
      home: Homepageview(),
    );
  }
}
