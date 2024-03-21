import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location/location.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../../../core/core.dart';

part 'prayer_time_cubit.freezed.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  final UserLocation location;

  PrayerTimeCubit({required this.location})
      : super(const PrayerTimeState.initial());
  List<Placemark> get placemarks => [];

  Future<void> requestPermission() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        emit(const LocationPermissionDenied());
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        emit(const LocationPermissionDenied());
        return;
      }
    }

    emit(const LocationPermissionGranted());
  }

  Future<void> getLocation() async {
    final permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.granted) {
      final currentLocation = await location.getLocation();
      placemarks.addAll(
        await placemarkFromCoordinates(
          currentLocation.latitude!,
          currentLocation.longitude!,
        ),
      );
      final params = CalculationMethod.other.getParameters();
      params.madhab = Madhab.shafi;
      params.highLatitudeRule = HighLatitudeRule.middle_of_the_night;
      params.fajrAngle = 20.0;
      params.ishaAngle = 18.0;
      params.adjustments.dhuhr = -3;
      params.adjustments.asr = -3;
      params.adjustments.maghrib = -3;
      params.adjustments.isha = -3;
      params.adjustments.fajr = -3;
      params.adjustments.sunrise = -3;
      final timezone = tz.getLocation('Asia/Jakarta');
      final now = tz.TZDateTime.now(timezone);

      final coordinates =
          Coordinates(currentLocation.latitude!, currentLocation.longitude!);
      final times = PrayerTimes(
        coordinates,
        DateComponents.from(now),
        params,
      );
      emit(LocationLoaded(currentLocation, times));
    } else {
      emit(const LocationPermissionDenied());
    }
  }

  Future<String> getAddressFromCoordinates(double lat, double long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    Placemark place = placemarks[0];
    String address = "${place.locality}, ${place.administrativeArea}";
    return address;
  }
}
