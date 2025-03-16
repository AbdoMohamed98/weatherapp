import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/models/getwethermodel.dart';
import 'package:weatherapp/models/weatherstatus.dart';
import 'package:weatherapp/services/getweatherservice.dart';
import 'package:weatherapp/views/weatherinfoview.dart';

class Getweathercubit extends Cubit<Weatherstatus> {
  Getweathercubit() : super(Noweatherbody()); // Set initial state
  Dio dio = Dio();
  getweatherinfo({required String cityname}) async {
    try {
      Getwethermodel getwethermodel = await Getweatherservice().getweatherinfo(cityname: cityname );
      emit(Weatherinfobody());
    } catch (e) {
      emit(Weatherfailurestate());
    }
  }
}
