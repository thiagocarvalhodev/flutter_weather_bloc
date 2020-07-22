import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/blocs/blocs.dart';

import 'package:flutter_weather/widgets/widgets.dart';

import 'repositories/repositories.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;

  App({@required this.weatherRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => WeatherBloc(weatherRepository: weatherRepository),
        child: Weather(),
      ),
    );
  }
}
