import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/models/getwethermodel.dart';
import 'package:weatherapp/models/weatherstatus.dart';
import 'package:weatherapp/services/getweatherservice.dart';

class Getweathercubit extends Cubit<Weatherstatus> {
  Getweathercubit() : super(Noweatherbody()); // Set initial state
  Dio dio = Dio();
   late Getwethermodel getwethermodell;
  getweatherinfo({required String cityname}) async {
    try {
      Getwethermodel getwethermodell =
          await Getweatherservice().getweatherinfo(cityname: cityname);
      emit(Weatherinfobody(getwethermodelll: getwethermodell));
    } catch (e) {
      emit(Weatherfailurestate());
    }
  }
}
