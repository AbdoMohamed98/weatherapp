import 'package:dio/dio.dart';
import 'package:weatherapp/models/getwethermodel.dart';

class Getweatherservice {
  Dio dio = Dio();
  Future<dynamic> getweatherinfo() async {
    try {
      Response response = await dio.get(
          'http://api.weatherapi.com/v1/marine.json?key=4fe825e036454f89ad9112352242612&q=London&days=1');
      if (response.statusCode == 200) {
        Map<String, dynamic> weatherinfo = response.data;
        // Map<String, dynamic> weatherdata = {
        //   'location' : weatherinfo['location'],
        //   'forecast': weatherinfo['forecast']['forecastday'][0]['day'],

        // };
        Getwethermodel getwethermodel =
            Getwethermodel.fromjsonData(weatherinfo);
        print(getwethermodel);
      } else {
        print('request failed with status : ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('there is an error: $e');
    }
  }
}
