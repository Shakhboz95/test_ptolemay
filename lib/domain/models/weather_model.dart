import 'package:geolocator/geolocator.dart';

class WeatherModel {
  final double degree;
  final Position position;
  final String address;

  WeatherModel(
      {required this.degree, required this.position, required this.address});
}
