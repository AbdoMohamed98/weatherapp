import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/wethercubit/getweathercubit.dart';
import 'package:weatherapp/models/getwethermodel.dart';
import 'package:weatherapp/services/getweatherservice.dart';
import 'package:weatherapp/views/homepageview.dart';
import 'package:weatherapp/views/noweatherview.dart';
import 'package:weatherapp/views/searchview.dart';
import 'package:weatherapp/views/weatherinfoview.dart';

void main() async {
  runApp(BlocProvider(
    create: (context) => Getweathercubit(),
    child: NewsApp(),
  ));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Searchview': (context) => Searchview(),
      },
      home: Homepageview(),
    );
  }
}
