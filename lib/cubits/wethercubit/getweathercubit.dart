import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/models/weatherstatus.dart';


class Getweathercubit extends Cubit<Weatherstatus> {
  Getweathercubit() : super(Noweatherbody()); // Set initial state
  Dio dio = Dio();
   getweatherinfo() async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/marine.json?key=4fe825e036454f89ad9112352242612&q=London&days=1');
  }

  // Example function to change state
  void showWeatherInfo() {
    emit(Wetherinfobody()); // Change state
  }

  void searchWeather() {
    emit(Srearchweather()); // Change state
  }
}
