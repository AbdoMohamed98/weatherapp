import 'package:flutter/foundation.dart';

class Getwethermodel {
  final String cityname;
  final String updatetime;
  final String image;
  final String condition;
  final double temp;
  final double maxtemp;
  final double mintemp;
  @override
// String toString() {
//   return 'City: $cityname, '
//          'Updated: $updatetime, '
//          'Image: $image, '
//          'Condition: $condition, '
//          'Temp: $temp°C, '
//          'Max Temp: $maxtemp°C, '
//          'Min Temp: $mintemp°C';
// }


  Getwethermodel(
      {required this.cityname,
      required this.updatetime,
      required this.image,
      required this.condition,
      required this.temp,
      required this.maxtemp,
      required this.mintemp});
  factory Getwethermodel.fromjsonData(jsonData) { return
    Getwethermodel(
        cityname: jsonData['location']['name'],
        updatetime: jsonData['location']['localtime'],
        image: jsonData['forecast']['forecastday'][0]['day']['condition']['icon'],
        condition: jsonData['forecast']['forecastday'][0]['astro']['moon_phase'],
        temp: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: jsonData['forecast']['forecastday'][0]['day']['mintemp_c']);
    
  }
}
