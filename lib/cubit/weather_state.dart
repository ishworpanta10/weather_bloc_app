part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

class WeatherLoading extends WeatherState {
  WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded({this.weather});

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {
  final String errorText;

  WeatherError({this.errorText});

  @override
  List<Object> get props => [errorText];
}
