import 'package:flutter/material.dart';

MaterialColor myGetThemeColor(String? weatherStateName) {
  if (weatherStateName == null) {
    return Colors.lightBlue;
  }
  if (weatherStateName == 'Sunny' ||
      weatherStateName == 'Clear' ||
      weatherStateName == 'partly cloudy') {
    return Colors.orange;
  } else if (weatherStateName == 'Blizzard' ||
      weatherStateName == 'Patchy snow possible' ||
      weatherStateName == 'Patchy sleet possible' ||
      weatherStateName == 'Patchy freezing drizzle possible' ||
      weatherStateName == 'Blowing snow') {
    return Colors.blue;
  } else if (weatherStateName == 'Freezing fog' ||
      weatherStateName == 'Fog' ||
      weatherStateName == 'Heavy Cloud' ||
      weatherStateName == 'Mist' ||
      weatherStateName == 'Fog') {
    return Colors.blueGrey;
  } else if (weatherStateName == 'Patchy rain possible' ||
      weatherStateName == 'Heavy Rain' ||
      weatherStateName == 'Showers	') {
    return Colors.blue;
  } else if (weatherStateName == 'Thundery outbreaks possible' ||
      weatherStateName == 'Moderate or heavy snow with thunder' ||
      weatherStateName == 'Patchy light snow with thunder' ||
      weatherStateName == 'Moderate or heavy rain with thunder' ||
      weatherStateName == 'Patchy light rain with thunder') {
    return Colors.deepPurple;
  } else {
    return Colors.blue;
  }
}
