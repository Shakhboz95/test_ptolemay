import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

abstract class LocationRepository {
  Future<(Position? position, String failedMsg)> getLocation();
  checkLocationPermission();
  Future<(Placemark? place, String failedMsg)> getUserAddress(
      Position position);
}
