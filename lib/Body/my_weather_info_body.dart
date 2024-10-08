import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_cubit.dart';
import 'package:my_weather_app/Methods/my_get_theme_color_method.dart';

class MyWeatherInfoBody extends StatelessWidget {
  const MyWeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var myWeatherModeL =
        BlocProvider.of<MyGetWeatherCubit>(context).myWeatherModeL!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            myGetThemeColor(myWeatherModeL.weatherCondition)[500]!,
            myGetThemeColor(myWeatherModeL.weatherCondition)[300]!,
            myGetThemeColor(myWeatherModeL.weatherCondition)[50]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              myWeatherModeL.cityName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: "Pacifico",
              ),
            ),
            Text(
              "Updated At ${myWeatherModeL.dateTime.hour}:${myWeatherModeL.dateTime.minute}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "Pacifico",
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https:${myWeatherModeL.weatherImage}"),
                Text(
                  "${myWeatherModeL.temp.round()}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Pacifico",
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "maxTemp : ${myWeatherModeL.maxTemp.round()}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Pacifico",
                      ),
                    ),
                    Text(
                      "minTemp : ${myWeatherModeL.minTemp.round()}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Pacifico",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Text(
              myWeatherModeL.weatherCondition,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: "Pacifico",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
