part of 'prayer_time_cubit.dart';

@freezed
class PrayerTimeState with _$PrayerTimeState {
  const factory PrayerTimeState.initial() = LocationInitial;
  const factory PrayerTimeState.loading() = PrayerTimeLoading;
  const factory PrayerTimeState.permissionDenied() = LocationPermissionDenied;
  const factory PrayerTimeState.prayerTimesLoaded(
    Position location,
    PrayerTimes prayerTime,
  ) = LocationLoaded;
  const factory PrayerTimeState.error(String message) = LocationError;
}
