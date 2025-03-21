import 'package:dio/dio.dart';
import 'package:weatherapp/models/getwethermodel.dart';

class Getweatherservice {
  Dio dio = Dio();
  Future<dynamic> getweatherinfo({required String cityname}) async {
    try {
      Response response = await dio.get(
          'http://api.weatherapi.com/v1/marine.json?key=4fe825e036454f89ad9112352242612&q=$cityname&days=1');
      if (response.statusCode == 200) {
        Map<String, dynamic> weatherinfo = response.data;
        
        Getwethermodel getwethermodel =
            Getwethermodel.fromjsonData(weatherinfo);
        return getwethermodel;
      } else {
        print('request failed with status : ${response.statusCode}');
      }
    } on DioException catch (e) {
      print('there is an error: $e');
    }
  }
}
