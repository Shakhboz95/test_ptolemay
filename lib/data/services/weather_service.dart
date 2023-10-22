import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_ptolemay/config/utils/constants.dart';

class WeatherService {
  BaseOptions baseDioOptions(String baseUrl) {
    return BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Accept': 'application/json',
        'App-OS': Platform.operatingSystem,
      },
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
      sendTimeout: const Duration(minutes: 1),
      contentType: 'application/json',
      responseType: ResponseType.json,
    );
  }

  Future<(dynamic, String msg)> getWeather(Position pos) async {
    try {
      var dio = Dio(baseDioOptions(Constants.baseUrl));

      debugPrint("lang ${pos.latitude}");
      debugPrint("long ${pos.longitude}");
      var data = await dio.get("weather", queryParameters: {
        "lat": pos.latitude,
        "lon": pos.longitude,
        "appid": Constants.weatherId,
      });
      debugPrint("${data.data}");
      return (data.data, "");
    } catch (e) {
      debugPrint(e.toString());
      return (null, "$e");
    }
  }
}
