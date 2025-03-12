import 'package:flutter/foundation.dart';

class Getwethermodel {
  final String cityname;
  final String updatetime;
  final String image;
  final String condition;
  final double temp;
  final double maxtemp;
  final double mintemp;

  Getwethermodel(
      {required this.cityname,
      required this.updatetime,
      required this.image,
      required this.condition,
      required this.temp,
      required this.maxtemp,
      required this.mintemp});
  factory Getwethermodel.fromjsonData(jsonData) {
    Getwethermodel(
        cityname: jsonData(),
        updatetime: jsonData(),
        image: jsonData(),
        condition: jsonData(),
        temp: jsonData(),
        maxtemp: jsonData(),
        mintemp: jsonData());
    return Getwethermodel.fromjsonData(jsonData);
  }
}
