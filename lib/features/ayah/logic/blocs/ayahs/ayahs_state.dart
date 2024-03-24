part of 'ayahs_bloc.dart';

@freezed
class AyahsState with _$AyahsState {
  const factory AyahsState.initial() = AyahInitial;
  const factory AyahsState.loading() = AyahLoading;
  const factory AyahsState.loaded(Ayah ayah) = AyahLoaded;
  const factory AyahsState.error(String message) = AyahError;
}
