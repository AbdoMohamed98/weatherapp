import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/wethercubit/getweathercubit.dart';
import 'package:weatherapp/models/weatherstatus.dart';
import 'package:weatherapp/views/noweatherview.dart';
import 'package:weatherapp/views/weatherinfoview.dart';

class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<Getweathercubit, Weatherstatus>(
        builder: (context, state) {
          if (state is Weatherinfobody) {
            return Weatherinfoview(getwethermodellll: state.getwethermodelll) ;
          } else if (state is Noweatherbody) {
            return Noweatherview() ;
          } else {
            return Text('oops there is an error , try again');
          }
        },
      ),
    );
  }
}