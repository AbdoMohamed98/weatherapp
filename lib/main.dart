import 'package:flutter/material.dart';
import 'package:weatherapp/models/getwethermodel.dart';
import 'package:weatherapp/services/getweatherservice.dart';
import 'package:weatherapp/views/homepageview.dart';
import 'package:weatherapp/views/searchview.dart';
import 'package:weatherapp/views/weatherinfobody.dart';

void main() async {
  runApp(NewsApp());
   Getweatherservice().getweatherinfo();
  
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Searchview': (context) => Searchview(),
        'Weatherinfobody': (context) => Weatherinfobody()
      },
      initialRoute: 'Homepageview',
      home: Homepageview(),
    );
  }
}
