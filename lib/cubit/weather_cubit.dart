import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/model/weather.dart';
import '../data/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    try {
      emit(WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather: weather));
    } on NetworkException {
      emit(WeatherError(errorText: 'Could not fetch the weather'));
    }
  }
}
