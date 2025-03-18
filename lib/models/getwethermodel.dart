
class Getwethermodel {
  final String cityname;
  final String updatetime;
  final String image;
  final String condition;
  final double temp;
  final double maxtemp;
  final double mintemp;
  @override



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
        condition: jsonData['forecast']['forecastday'][0]['day']['condition']['text'],
        temp: jsonData['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxtemp: jsonData['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: jsonData['forecast']['forecastday'][0]['day']['mintemp_c']);
    
  }
}
