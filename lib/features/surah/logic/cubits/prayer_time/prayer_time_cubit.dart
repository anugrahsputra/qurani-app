import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../../../core/core.dart';

part 'prayer_time_cubit.freezed.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  final UserLocation location;

  final Logger _log = Logger('PrayerTimeCubit');

  PrayerTimeCubit({required this.location})
      : super(const PrayerTimeState.initial());

  Future<void> getLoc() async {
    bool serviceEnabled = await location.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _log.warning('Failed to get location: Location service is disabled');
      emit(const LocationPermissionDenied());
      return;
    }

    LocationPermission permission = await location.checkPermission();
    if (permission != LocationPermission.always &&
        permission != LocationPermission.whileInUse) {
      permission = await location.requestPermission();
      if (permission != LocationPermission.always &&
          permission != LocationPermission.whileInUse) {
        _log.warning('Failed to get location: Location permission denied');
        emit(const LocationPermissionDenied());
        return;
      }
    }

    emit(const PrayerTimeLoading());
    _log.info('Getting location...');

    try {
      Position position = await location.getCurrentPosition();
      final params = CalculationMethod.other.getParameters();
      params.madhab = Madhab.shafi;
      params.highLatitudeRule = HighLatitudeRule.middle_of_the_night;
      params.fajrAngle = 20.0;
      params.ishaAngle = 18.0;
      params.adjustments.dhuhr = -2;
      params.adjustments.asr = -3;
      params.adjustments.maghrib = -3;
      params.adjustments.isha = -2;
      params.adjustments.fajr = 5;
      params.adjustments.sunrise = -4;
      final timezone = tz.getLocation('Asia/Jakarta');
      final now = tz.TZDateTime.now(timezone);

      final coordinates = Coordinates(
        position.latitude,
        position.longitude,
      );
      final times = PrayerTimes(
        coordinates,
        DateComponents.from(now),
        params,
      );

      _log.fine('Location loaded');
      emit(LocationLoaded(position, times));
    } catch (_) {
      _log.warning('Failed to get location');
      emit(const LocationPermissionDenied());
    }
  }

  Future<String> getAddressFromCoordinates(double lat, double long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    if (placemarks.isNotEmpty) {
      Placemark place = placemarks[0];
      String locality = place.locality ?? 'Unknown';
      String administrativeArea = place.administrativeArea ?? 'Unknown';
      String address = "$locality, $administrativeArea";

      return address;
    } else {
      emit(const LocationError('Gagal mendapatkan lokasi'));
      return 'Gagal mendapatkan lokasi';
    }
  }
}
