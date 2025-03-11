import 'package:flutter/material.dart';
import 'package:weatherapp/views/homepageview.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Homepageview() ,
    );
  }
}
