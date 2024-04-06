part of 'prayer_time_cubit.dart';

// @freezed
// class PrayerTimeState with _$PrayerTimeState {
//   const factory PrayerTimeState.initial() = LocationInitial;
//   const factory PrayerTimeState.loading() = PrayerTimeLoading;
//   const factory PrayerTimeState.permissionDenied(String message) =
//       LocationPermissionDenied;
//   const factory PrayerTimeState.prayerTimesLoaded(
//     Position location,
//     PrayerTimes prayerTime,
//   ) = LocationLoaded;
//   const factory PrayerTimeState.error(String message) = LocationError;
// }

abstract class PrayerTimeState extends Equatable {
  const PrayerTimeState();

  @override
  List<Object> get props => [];
}

class PrayerTimeInitial extends PrayerTimeState {}

class PrayerTimeLoading extends PrayerTimeState {}

class LocationPermissionDenied extends PrayerTimeState {
  final String message;

  const LocationPermissionDenied(this.message);

  @override
  List<Object> get props => [message];
}

class LocationLoaded extends PrayerTimeState {
  final Position location;
  final PrayerTimes prayerTime;

  const LocationLoaded(this.location, this.prayerTime);

  @override
  List<Object> get props => [location, prayerTime];
}

class LocationError extends PrayerTimeState {
  final String message;

  const LocationError(this.message);

  @override
  List<Object> get props => [message];
}
