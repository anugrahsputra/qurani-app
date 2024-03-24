part of 'ayahs_bloc.dart';

@freezed
class AyahsEvent with _$AyahsEvent {
  const factory AyahsEvent.onGetAyah(int surahNumber, int ayahNumber) =
      OnGetAyah;

  const factory AyahsEvent.onGetRandomAyah() = OnGetRandomAyah;
}
