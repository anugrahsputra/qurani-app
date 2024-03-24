import 'package:geolocator/geolocator.dart';

abstract class UserLocation {
  Future<bool> isLocationServiceEnabled();
  Future<LocationPermission> checkPermission();
  Future<LocationPermission> requestPermission();
  Future<Position> getCurrentPosition();
}

class IUserLocation implements UserLocation {
  @override
  Future<LocationPermission> checkPermission() => Geolocator.checkPermission();

  @override
  Future<Position> getCurrentPosition() => Geolocator.getCurrentPosition(
        forceAndroidLocationManager: false,
      );

  @override
  Future<bool> isLocationServiceEnabled() =>
      Geolocator.isLocationServiceEnabled();

  @override
  Future<LocationPermission> requestPermission() =>
      Geolocator.requestPermission();
}
