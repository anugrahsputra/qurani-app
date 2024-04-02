import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
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

        when(mockUserLocation.getCurrentPosition())
            .thenAnswer((_) async => MockPosition());
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [
        const PrayerTimeLoading(),
        isA<LocationLoaded>(),
      ],
      verify: (bloc) {
        verifyInOrder([
          mockUserLocation.getCurrentPosition(),
        ]);
      },
    );

    blocTest(
      'should emit [LocationPermissionDenied] when location service is disabled',
      build: () => prayerTimeCubit,
      setUp: () {
        when(mockUserLocation.getCurrentPosition()).thenThrow(Exception());
      },
      act: (cubit) => cubit.getLoc(),
      expect: () => [
        const PrayerTimeLoading(),
        const LocationPermissionDenied(),
      ],
      verify: (bloc) {
        verify(mockUserLocation.getCurrentPosition()).called(1);
      },
    );
  });
}
