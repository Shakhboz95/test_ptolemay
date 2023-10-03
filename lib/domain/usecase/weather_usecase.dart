import 'package:geocoding/geocoding.dart';
import 'package:test_ptolemay/data/model/weather_dto.dart';
import 'package:test_ptolemay/domain/models/weather_model.dart';
import 'package:test_ptolemay/domain/repositories/location_repository.dart';
import 'package:test_ptolemay/domain/repositories/weather_repository.dart';

class WeatherUseCase {
  final WeatherRepository _weatherRepository;
  final LocationRepository _locationRepository;

  WeatherUseCase(
      {required WeatherRepository weatherRepository,
      required LocationRepository locationRepository})
      : _weatherRepository = weatherRepository,
        _locationRepository = locationRepository;

  Future<(WeatherModel? model, String errorMsg)> getWeather() async {
    var locationResult = await _locationRepository.getLocation();
    if (locationResult.$1 == null) {
      return (null, locationResult.$2);
    }
    var position = locationResult.$1!;

    var addressResult = await _locationRepository.getUserAddress(position);
    if (addressResult.$1 == null) {
      return (null, addressResult.$2);
    }
    Placemark userAddress = addressResult.$1!;
    var result = await _weatherRepository.getWeather(position);
    if (result.$2.isNotEmpty) {
      return (null, result.$2);
    }
    WeatherDTO weatherData = result.$1;
    var model = WeatherModel(
        degree: weatherData.temp,
        position: position,
        address:
            "${userAddress.country} ${userAddress.name} ${userAddress.street}");
    return (model, "");
  }
}
