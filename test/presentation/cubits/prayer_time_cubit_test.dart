import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/surah/logic/cubits/prayer_time/prayer_time_cubit.dart';
import 'package:timezone/data/latest.dart' as tz;

import '../../helper/mock.dart';

void main() {
  late PrayerTimeCubit prayerTimeCubit;
  late MockUserLocation mockUserLocation;

  setUp(() {
    mockUserLocation = MockUserLocation();
    prayerTimeCubit = PrayerTimeCubit(location: mockUserLocation);
  });

  group('prayerTimeCubit', () {
    blocTest<PrayerTimeCubit, PrayerTimeState>(
      'emits [LocationPermissionDenied] when location service is disabled and user denies request',
      setUp: () {
        when(mockUserLocation.serviceEnabled())
            .thenAnswer((_) => Future.value(false));
        when(mockUserLocation.requestService())
            .thenAnswer((_) => Future.value(false));
      },
      build: () => prayerTimeCubit,
      act: (cubit) => cubit.requestPermission(),
      expect: () => [const LocationPermissionDenied()],
    );

    blocTest<PrayerTimeCubit, PrayerTimeState>(
      'emits [LocationPermissionGranted] when location service is enabled and user grant permission',
      setUp: () {
        when(mockUserLocation.serviceEnabled())
            .thenAnswer((_) => Future.value(true));
        when(mockUserLocation.hasPermission())
            .thenAnswer((_) => Future.value(PermissionStatus.granted));
        when(mockUserLocation.requestPermission())
            .thenAnswer((_) => Future.value(PermissionStatus.granted));
      },
      build: () => prayerTimeCubit,
      act: (cubit) => cubit.requestPermission(),
      expect: () => [const LocationPermissionGranted()],
    );

    blocTest<PrayerTimeCubit, PrayerTimeState>(
      'emits [LocationPermissionDenied] when location service is enabled and user denies permission',
      setUp: () {
        when(mockUserLocation.serviceEnabled())
            .thenAnswer((_) => Future.value(true));
        when(mockUserLocation.hasPermission())
            .thenAnswer((_) => Future.value(PermissionStatus.denied));
        when(mockUserLocation.requestPermission())
            .thenAnswer((_) => Future.value(PermissionStatus.denied));
      },
      build: () => prayerTimeCubit,
      act: (cubit) => cubit.requestPermission(),
      expect: () => [const LocationPermissionDenied()],
    );

    blocTest<PrayerTimeCubit, PrayerTimeState>(
      'emits [LocationLoaded] when location service is enabled and user grant permission',
      setUp: () {
        tz.initializeTimeZones();
        when(mockUserLocation.hasPermission())
            .thenAnswer((_) => Future.value(PermissionStatus.granted));
        when(mockUserLocation.getLocation()).thenAnswer(
          (_) => Future.value(
            LocationData.fromMap({
              'latitude': 37.4219983,
              'longitude': -122.084,
            }),
          ),
        );
      },
      build: () => prayerTimeCubit,
      act: (cubit) => cubit.getLocation(),
      expect: () => [isA<LocationLoaded>()],
    );

    blocTest<PrayerTimeCubit, PrayerTimeState>(
      'emits [LocationPermissionDenied] when location service is enabled and user denies permission',
      setUp: () => when(mockUserLocation.hasPermission())
          .thenAnswer((_) => Future.value(PermissionStatus.denied)),
      build: () => prayerTimeCubit,
      act: (cubit) => cubit.getLocation(),
      expect: () => [const LocationPermissionDenied()],
    );
  });
}
