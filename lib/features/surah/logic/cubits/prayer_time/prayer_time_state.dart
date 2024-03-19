part of 'prayer_time_cubit.dart';

@freezed
class PrayerTimeState with _$PrayerTimeState {
  const factory PrayerTimeState.initial() = LocationInitial;
  const factory PrayerTimeState.permissionGranted() = LocationPermissionGranted;
  const factory PrayerTimeState.permissionDenied() = LocationPermissionDenied;
  const factory PrayerTimeState.locationLoaded(
    LocationData location,
    PrayerTimes prayerTime,
  ) = LocationLoaded;
}
