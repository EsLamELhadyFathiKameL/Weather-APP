import 'package:bloc/bloc.dart';
import 'package:my_weather_app/Cubits/My_Get_Weather_cubit/my_get_weather_states.dart';
import 'package:my_weather_app/ModeLs/my_weather_model.dart';
import 'package:my_weather_app/Services/my_weather_service.dart';

class MyGetWeatherCubit extends Cubit<MyGetWeatherStates> {
  MyGetWeatherCubit() : super(MyNoWeatherState());
  MyWeatherModeL? myWeatherModeL;
  myGetCurrentWeatherMethod({required String cityName}) async {
    try {
      myWeatherModeL = await MyWeatherService()
          .myGetCurrentWeatherMethod(cityName: cityName);
      emit(MyWeatherInfoState());
    } catch (e) {
      emit(MyWeatherFaiLureState());
    }
  }
}
