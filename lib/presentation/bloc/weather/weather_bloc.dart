import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ptolemay/domain/models/weather_model.dart';
import 'package:test_ptolemay/domain/usecase/weather_usecase.dart';

part "weather_bloc.freezed.dart";

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherUseCase _weatherUseCase;
  WeatherBloc(this._weatherUseCase) : super(const WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      await event.when(getWeather: () async {
        emit(const Loading());
        var weatherResult = await _weatherUseCase.getWeather();
        if (weatherResult.$1 == null) {
          emit(WeatherFailedState(weatherResult.$2));
        } else {
          emit(WeatherFetched(weatherResult.$1!));
        }
      });
    });
  }
}

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.getWeather() = GetWeatherEvent;
}

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = WeatherInitial;
  const factory WeatherState.loading() = Loading;
  const factory WeatherState.success(WeatherModel model) = WeatherFetched;
  const factory WeatherState.failed(String errorMsg) = WeatherFailedState;
}
