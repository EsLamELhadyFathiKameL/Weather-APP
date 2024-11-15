import 'package:flutter/material.dart';

class MyNoWeatherBody extends StatelessWidget {
  const MyNoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "There Is No Weather PLease",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: "Pacifico",
            ),
          ),
          Text(
            "Start Searching Now",
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
}
