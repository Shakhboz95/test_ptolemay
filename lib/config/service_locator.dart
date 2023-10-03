import 'package:get_it/get_it.dart';
import 'package:test_ptolemay/data/repositories/location_repository.dart';
import 'package:test_ptolemay/data/repositories/weather_repository_impl.dart';
import 'package:test_ptolemay/data/services/weather_service.dart';
import 'package:test_ptolemay/domain/repositories/location_repository.dart';
import 'package:test_ptolemay/domain/repositories/weather_repository.dart';
import 'package:test_ptolemay/domain/usecase/weather_usecase.dart';

final serviceLocator = GetIt.instance;

class ServiceLocator {
  static setServices() {
    serviceLocator.registerSingleton<WeatherService>(WeatherService());
    serviceLocator
        .registerSingleton<LocationRepository>(LocationRepositoryImpl());
    serviceLocator.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(
        weatherService: serviceLocator.get<WeatherService>()));

    serviceLocator.registerSingleton<WeatherUseCase>(WeatherUseCase(
      weatherRepository: serviceLocator.get<WeatherRepository>(),
      locationRepository: serviceLocator.get<LocationRepository>(),
    ));
  }
}
