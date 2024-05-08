part of 'surah_bloc.dart';

@freezed
abstract class SurahEvent with _$SurahEvent {
  const factory SurahEvent.onGetSurah() = OnGetSurah;
  const factory SurahEvent.onSearchSurah(String query) = OnSearchSurah;
}
