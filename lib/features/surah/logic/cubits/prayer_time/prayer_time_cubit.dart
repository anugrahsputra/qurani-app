import 'package:adhan/adhan.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

part 'prayer_time_cubit.freezed.dart';
part 'prayer_time_state.dart';

class PrayerTimeCubit extends Cubit<PrayerTimeState> {
  final Location location;
  PrayerTimeCubit({required this.location})
      : super(const PrayerTimeState.initial());

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
      final params = CalculationMethod.karachi.getParameters();
      params.madhab = Madhab.hanafi;
      final coordinates =
          Coordinates(currentLocation.latitude!, currentLocation.longitude!);
      final times = PrayerTimes.today(coordinates, params);
      emit(LocationLoaded(currentLocation, times));
    } else {
      emit(const LocationPermissionDenied());
    }
  }
}
