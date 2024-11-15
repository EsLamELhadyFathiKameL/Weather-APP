import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:my_weather_app/ModeLs/my_weather_model.dart';

class MyWeatherService {
  final dio = Dio();
  final String baseUrL = "http://api.weatherapi.com/v1";
  final String apiKey = "03696e8832ce46968e211516241703";

  Future<MyWeatherModeL> myGetCurrentWeatherMethod(
      {required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrL/forecast.json?key=$apiKey&q=$cityName&days=1");
      MyWeatherModeL myWeatherModeL = MyWeatherModeL.fromJson(response.data);
      return myWeatherModeL;
    } on DioException catch (ex) {
      final String errorMessage = ex.response?.data["error"]["message"] ??
          "OOPs There Is An Error PLease, Try Again Later.";
      throw Exception("Dio Error Message = $errorMessage");
    } catch (e) {
      log(
        e.toString(),
      );
      throw Exception(
        "OOPs There Is An Error PLease, Try Again Later.",
      );
    }
  }
}
