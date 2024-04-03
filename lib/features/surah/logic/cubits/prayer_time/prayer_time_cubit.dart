// after refactored

import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
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
    emit(const PrayerTimeLoading());

    bool serviceEnabled = await location.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _log.warning('Failed to get location: Location service is disabled');
      emit(const LocationPermissionDenied('Location service is disabled'));
      return;
    }

    LocationPermission permission = await location.checkPermission();
    if (permission != LocationPermission.always &&
        permission != LocationPermission.whileInUse) {
      permission = await location.requestPermission();
      if (permission != LocationPermission.always &&
          permission != LocationPermission.whileInUse) {
        _log.warning('Failed to get location: Location permission denied');
        emit(const LocationPermissionDenied('Location permission is denied'));
        return;
      }
    }
    try {
      _log.info('Getting location...');
      Position position = await location.getCurrentPosition();
      final params = CalculationMethod.other.getParameters();
      params.madhab = Madhab.shafi;
      params.highLatitudeRule = HighLatitudeRule.middle_of_the_night;
      params.fajrAngle = 20.0;
      params.ishaAngle = 18.0;
      final timezone = tz.getLocation('Asia/Jakarta');
      final now = tz.TZDateTime.now(timezone);

      final coordinates = Coordinates(
        position.latitude,
        position.longitude,
      );
      PrayerTimes times = PrayerTimes(
        coordinates,
        DateComponents.from(now),
        params,
      );

      _log.fine('Location loaded');
      emit(LocationLoaded(position, times));
    } catch (_) {
      _log.warning('Failed to get location');
      emit(const LocationPermissionDenied('Failed to get location'));
    }
  }

  Future<String> getAddressFromCoordinates(double lat, double long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    try {
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
    } on PlatformException catch (e) {
      if (e.code == 'IO_ERROR' && e.message == 'Service not Available') {
        _log.warning(
            'Failed to get address: Location services are not available or disabled.');
        emit(const LocationError(
            'Tidak dapat mengakses lokasi. Pastikan layanan lokasi diaktifkan.'));
        return 'Tidak dapat mengakses lokasi. Pastikan layanan lokasi diaktifkan.';
      } else {
        _log.warning('Failed to get address: ${e.message}');
        return 'Gagal mendapatkan lokasi';
      }
    }
  }
}
