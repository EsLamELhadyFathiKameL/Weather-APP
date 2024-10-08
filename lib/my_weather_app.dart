import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_cubit.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_states.dart';
import 'package:my_weather_app/Screens/my_weather_page.dart';
import 'package:my_weather_app/Methods/my_get_theme_color_method.dart';

void main() async {
  runApp(const MyWeatherAPP());
}

class MyWeatherAPP extends StatelessWidget {
  const MyWeatherAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyGetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<MyGetWeatherCubit, MyGetWeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: myGetThemeColor(
                  BlocProvider.of<MyGetWeatherCubit>(context)
                      .myWeatherModeL
                      ?.weatherCondition,
                ),
              ),
              home: const MyWeatherPage(),
            );
          },
        );
      }),
    );
  }
}
