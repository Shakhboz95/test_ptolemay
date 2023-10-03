import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_ptolemay/data/model/weather_dto.dart';
import 'package:test_ptolemay/data/services/weather_service.dart';
import 'package:test_ptolemay/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherService _weatherService;

  WeatherRepositoryImpl({required WeatherService weatherService})
      : _weatherService = weatherService;

  @override
  Future<(WeatherDTO? dto, String msg)> getWeather(Position position) async {
    try {
      var data = await _weatherService.getWeather(position);
      if (data.$2.isNotEmpty) {
        throw Exception(data.$2);
      }
      var dto = WeatherDTO.fromJson(data.$1);
      debugPrint("res $dto");
      return (dto, "");
    } catch (e) {
      return (null, e.toString());
    }
  }
}
