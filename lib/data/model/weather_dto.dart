import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ptolemay/config/utils/constants.dart';

@freezed
class WeatherDTO {
  final double temp;

  WeatherDTO({required this.temp});

  factory WeatherDTO.fromJson(Map<String, dynamic> json) {
    var celciusDegree = json["main"]["temp"] + Constants.celcius;
    return WeatherDTO(temp: celciusDegree);
  }
}
