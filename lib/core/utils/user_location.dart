import 'package:location/location.dart';

abstract class UserLocation {
  Future<PermissionStatus> requestPermission();
  Future<bool> requestService();
  Future<PermissionStatus> hasPermission();
  Future<LocationData> getLocation();
  Future<bool> serviceEnabled();
}

class IUserLocation implements UserLocation {
  final Location location;

  IUserLocation({required this.location});
  @override
  Future<LocationData> getLocation() async => await location.getLocation();

  @override
  Future<PermissionStatus> hasPermission() async =>
      await location.hasPermission();

  @override
  Future<PermissionStatus> requestPermission() async =>
      location.requestPermission();

  @override
  Future<bool> serviceEnabled() async => await location.serviceEnabled();

  @override
  Future<bool> requestService() async => await location.requestService();
}
