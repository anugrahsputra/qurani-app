import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/surah/logic/cubits/prayer_time/prayer_time_cubit.dart';
import 'package:qurani/features/surah/surah.dart';
import 'package:timezone/data/latest.dart' as tz;

import '../../helper/injection.dart';
import '../../helper/mock.dart';

void main() {
  late PrayerTimeCubit prayerTimeCubit;
  late UserLocation mockUserLocation;
  setUp(() {
    registerSl();
    mockUserLocation = getMockUserLocation();
    prayerTimeCubit = PrayerTimeCubit(location: mockUserLocation);
  });

  tearDown(() => unregisterSl());

  group('prayerTimeCubit', () {
    blocTest(
      'should emit [LocationLoaded] when location data fetched',
      build: () => prayerTimeCubit,
      setUp: () {
        tz.initializeTimeZones();

        when(
          mockUserLocation.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);
        when(
          mockUserLocation.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.always);
        when(
          mockUserLocation.requestPermission(),
        ).thenAnswer((_) async => LocationPermission.always);
        when(
          mockUserLocation.getCurrentPosition(),
        ).thenAnswer((_) async => MockPosition());
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [const PrayerTimeLoading(), isA<LocationLoaded>()],
      verify: (bloc) {
        verifyInOrder([
          mockUserLocation.isLocationServiceEnabled(),
          mockUserLocation.checkPermission(),
          mockUserLocation.getCurrentPosition(),
        ]);
      },
    );

    blocTest(
      'should emit [LocationPermissionDenied] when location service is disabled',
      build: () => prayerTimeCubit,
      setUp: () {
        when(
          mockUserLocation.isLocationServiceEnabled(),
        ).thenAnswer((_) async => false);
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [
        const PrayerTimeLoading(),
        const LocationPermissionDenied('Location service is disabled'),
      ],
      verify: (bloc) {
        verify(mockUserLocation.isLocationServiceEnabled());
      },
    );

    blocTest(
      'should emit [LocationPermissionDenied] when location permission is denied',
      build: () => prayerTimeCubit,
      setUp: () {
        when(
          mockUserLocation.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);
        when(
          mockUserLocation.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.denied);
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [
        const PrayerTimeLoading(),
        const LocationPermissionDenied('Location permission is denied'),
      ],
      verify: (bloc) {
        verifyInOrder([
          mockUserLocation.isLocationServiceEnabled(),
          mockUserLocation.checkPermission(),
        ]);
      },
    );

    blocTest(
      'should emit [LocationPermissionDenied] when failed to get location',
      build: () => prayerTimeCubit,
      setUp: () {
        when(
          mockUserLocation.isLocationServiceEnabled(),
        ).thenAnswer((_) async => true);
        when(
          mockUserLocation.checkPermission(),
        ).thenAnswer((_) async => LocationPermission.always);
        when(mockUserLocation.getCurrentPosition()).thenThrow(Exception());
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [
        const PrayerTimeLoading(),
        const LocationPermissionDenied('Failed to get location'),
      ],
      verify: (bloc) {
        verifyInOrder([
          mockUserLocation.isLocationServiceEnabled(),
          mockUserLocation.checkPermission(),
          mockUserLocation.getCurrentPosition(),
        ]);
      },
    );
  });
}
