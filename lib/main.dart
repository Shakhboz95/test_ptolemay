import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ptolemay/config/service_locator.dart';
import 'package:test_ptolemay/domain/usecase/weather_usecase.dart';
import 'package:test_ptolemay/presentation/bloc/counter/counter_bloc.dart';
import 'package:test_ptolemay/presentation/bloc/theme/theme_bloc.dart';
import 'package:test_ptolemay/presentation/bloc/weather/weather_bloc.dart';
import 'package:test_ptolemay/presentation/ui/counter_page.dart';

void main() async {
  await ServiceLocator.setServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => WeatherBloc(serviceLocator.get<WeatherUseCase>())),
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        return MaterialApp(
          themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: const CounterPage(),
        );
      }),
    );
  }
}
