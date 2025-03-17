import 'package:weatherapp/models/getwethermodel.dart';

class Weatherstatus {}

class Noweatherbody extends Weatherstatus {}

class Weatherinfobody extends Weatherstatus {
  final Getwethermodel getwethermodelll;

  Weatherinfobody({required this.getwethermodelll});
}

class Weatherfailurestate extends Weatherstatus {}
