import 'package:geolocator/geolocator.dart';

abstract class WeatherRepository {
  Future<(dynamic, String msg)> getWeather(Position position);
}
