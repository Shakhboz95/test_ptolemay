import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test_ptolemay/domain/repositories/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  @override
  getLocation() async {
    try {
      final hasPermission = await checkLocationPermission();

      if (!hasPermission) return (null, "Please enable location service");
      var position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      return (position, "");
    } catch (e) {
      return (null, "Failed to get current location \n$e");
    }
  }

  @override
  getUserAddress(Position position) async {
    try {
      var placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      if (placemarks.isEmpty) {
        return (null, "Address not found");
      }
      Placemark place = placemarks.first;
      return (place, "");
    } catch (e) {
      return (null, "Can't get address \n$e");
    }
  }

  @override
  checkLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }
}
