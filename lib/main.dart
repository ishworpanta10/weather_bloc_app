import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_bloc_tutorial/bloc/weather_bloc.dart';
// import 'package:flutter_cubit_bloc_tutorial/cubit/weather_cubit.dart';
import 'package:flutter_cubit_bloc_tutorial/pages/weather_search_page.dart';

import 'data/weather_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Weather App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
