import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/wethercubit/getweathercubit.dart';
import 'package:weatherapp/services/colorthememethod.dart';
import 'package:weatherapp/views/homepageview.dart';
import 'package:weatherapp/views/searchview.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => Getweathercubit(),
    child: const NewsApp(),
  ));
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: appthemecolor(BlocProvider.of<Getweathercubit>(context).getwethermodell.condition)
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'Searchview': (context) => const Searchview(),
      },
      home: const Homepageview(),
    );
  }
}
