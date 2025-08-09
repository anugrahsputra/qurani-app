import 'package:geolocator/geolocator.dart';

abstract class UserLocation {
  Future<bool> isLocationServiceEnabled();
  Future<LocationPermission> checkPermission();
  Future<LocationPermission> requestPermission();
  Future<Position> getCurrentPosition();
  Future<Position?> getLastKnownPosition();
}

class IUserLocation implements UserLocation {
  @override
  Future<LocationPermission> checkPermission() async =>
      await Geolocator.checkPermission();

  @override
  Future<Position> getCurrentPosition() async =>
      await Geolocator.getCurrentPosition(forceAndroidLocationManager: false);

  @override
  Future<bool> isLocationServiceEnabled() async =>
      await Geolocator.isLocationServiceEnabled();

  @override
  Future<LocationPermission> requestPermission() async =>
      await Geolocator.requestPermission();

  @override
  Future<Position?> getLastKnownPosition() async {
    return Geolocator.getLastKnownPosition();
  }
}
