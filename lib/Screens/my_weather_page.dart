// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_weather_app/Body/my_no_weather_body.dart';
import 'package:my_weather_app/Body/my_weather_info_body.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_cubit.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_states.dart';
import 'package:my_weather_app/Screens/my_search_page.dart';

class MyWeatherPage extends StatelessWidget {
  const MyWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            const Text(
              "Weather APP",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontFamily: "Pacifico",
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MySearchPage();
                    },
                  ),
                );
              },
              icon: Icon(
                MdiIcons.searchWeb,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<MyGetWeatherCubit, MyGetWeatherStates>(
        builder: (context, state) {
          if (state is MyNoWeatherState) {
            return const MyNoWeatherBody();
          } else if (state is MyWeatherInfoState) {
            return MyWeatherInfoBody();
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "There Is An Error PLease",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "Pacifico",
                    ),
                  ),
                  Text(
                    "Try Again Later.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "Pacifico",
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
