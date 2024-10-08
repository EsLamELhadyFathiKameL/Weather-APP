class MyWeatherModeL {
  final String cityName;
  final DateTime dateTime;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final String weatherImage;

  MyWeatherModeL({
    required this.cityName,
    required this.dateTime,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
    required this.weatherImage,
  });
  factory MyWeatherModeL.fromJson(json) {
    return MyWeatherModeL(
      cityName: json["location"]["name"],
      dateTime: DateTime.parse(json["current"]["last_updated"]),
      temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      weatherCondition: json["forecast"]["forecastday"][0]["day"]["condition"]
          ["text"],
      weatherImage: json["forecast"]["forecastday"][0]["day"]["condition"]
          ["icon"],
    );
  }
}
