import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_ptolemay/presentation/bloc/counter/counter_bloc.dart';
import 'package:test_ptolemay/presentation/bloc/theme/theme_bloc.dart';
import 'package:test_ptolemay/presentation/bloc/weather/weather_bloc.dart';
import 'package:test_ptolemay/presentation/ui/widgets/custom_action_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, weatherState) {
      return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, themeState) {
        return BlocBuilder<CounterBloc, CounterState>(
            builder: (context, counterState) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Weather Counter"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  weatherState.when(
                    initial: () =>
                        const Text("Press cloud icon to get weather data"),
                    loading: () => const CircularProgressIndicator(),
                    success: (model) => Text(
                        "${model.address} \n${model.degree.toStringAsFixed(1)} degree, \n${model.position}"),
                    failed: (error) =>
                        Text(error, style: const TextStyle(color: Colors.red)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${counterState.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFloatingActionButton(
                        onPressed: () => context
                            .read<WeatherBloc>()
                            .add(const GetWeatherEvent()),
                        child: const Icon(Icons.cloud),
                      ),
                      CustomFloatingActionButton(
                        onPressed: () => context
                            .read<CounterBloc>()
                            .add(IncrementEvent(themeState.isDark)),
                        isHidden: counterState.hiddenAdd,
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFloatingActionButton(
                        onPressed: () => context
                            .read<ThemeBloc>()
                            .add(ChangeTheme(themeState.isDark)),
                        child: const Icon(Icons.color_lens),
                      ),
                      CustomFloatingActionButton(
                        onPressed: () => context
                            .read<CounterBloc>()
                            .add(DecrementEvent(themeState.isDark)),
                        isHidden: counterState.hiddenSub,
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
      });
    });
  }
}
