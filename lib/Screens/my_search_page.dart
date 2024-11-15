import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_cubit.dart';

class MySearchPage extends StatelessWidget {
  const MySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            MdiIcons.arrowLeft,
            size: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          "Search For City",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: "Pacifico",
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextField(
            onSubmitted: (value) async {
              BlocProvider.of<MyGetWeatherCubit>(context)
                  .myGetCurrentWeatherMethod(cityName: value);
              Navigator.pop(context);
            },
            cursorColor: Colors.blue,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.blue,
            ),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  MdiIcons.searchWeb,
                  size: 25,
                  color: Colors.blue,
                ),
              ),
              labelText: "Search",
              labelStyle: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
              hintText: "Enter City Name",
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontFamily: "Pacifico",
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
