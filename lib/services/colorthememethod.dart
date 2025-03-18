import 'package:flutter/material.dart';
    
  MaterialColor appthemecolor(String condition) {
    if (condition == "Sunny" || condition == "Clear") {
      return Colors.orange;
    } else if (condition == "Partly cloudy" ||
        condition == "Cloudy" ||
        condition == "Overcast") {
      return Colors.blueGrey;
    } else if (condition == "Mist" ||
        condition == "Fog" ||
        condition == "Freezing fog") {
      return Colors.grey;
    } else if (condition == "rain" ||
        condition == "drizzle" ||
        condition == "showers") {
      return Colors.blue;
    } else if (condition == "snow" ||
        condition == "Blizzard" ||
        condition == "sleet" ||
        condition == "ice pellets") {
      return Colors.lightBlue;
    } else if (condition == "thunder") {
      return Colors.deepPurple;
    } else {
      return Colors.teal; // Default
    }
  }

