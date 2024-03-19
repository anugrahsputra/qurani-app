import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';

import '../../helper/mock.dart';

void main() {
  late UserLocation userLocation;
  late MockLocation mockLocation;

  setUp(() {
    mockLocation = MockLocation();
    userLocation = IUserLocation(location: mockLocation);
  });

  group('UserLocation', () {
    test('getLocation should return LocationData', () async {
      final locationData = LocationData.fromMap({
        'latitude': 37.4219983,
        'longitude': -122.084,
      });
      when(mockLocation.getLocation())
          .thenAnswer((_) => Future.value(locationData));

      final result = await userLocation.getLocation();

      expect(result, equals(locationData));
      verify(mockLocation.getLocation()).called(1);
    });

    test('hasPermission should return PermissionStatus', () async {
      const permissionStatus = PermissionStatus.granted;
      when(mockLocation.hasPermission())
          .thenAnswer((_) => Future.value(permissionStatus));

      final result = await userLocation.hasPermission();

      expect(result, equals(permissionStatus));
      verify(mockLocation.hasPermission()).called(1);
    });

    test('requestPermission should return PermissionStatus', () async {
      const permissionStatus = PermissionStatus.granted;
      when(mockLocation.requestPermission())
          .thenAnswer((_) => Future.value(permissionStatus));

      final result = await userLocation.requestPermission();

      expect(result, equals(permissionStatus));
      verify(mockLocation.requestPermission()).called(1);
    });

    test('serviceEnabled should return bool', () async {
      const serviceEnabled = true;
      when(mockLocation.serviceEnabled())
          .thenAnswer((_) => Future.value(serviceEnabled));

      final result = await userLocation.serviceEnabled();

      expect(result, equals(serviceEnabled));
      verify(mockLocation.serviceEnabled()).called(1);
    });

    test('requestService should return bool', () async {
      const requestService = true;
      when(mockLocation.requestService())
          .thenAnswer((_) => Future.value(requestService));

      final result = await userLocation.requestService();

      expect(result, equals(requestService));
      verify(mockLocation.requestService()).called(1);
    });
  });
}
