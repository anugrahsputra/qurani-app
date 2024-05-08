part of 'surah_bloc.dart';

@freezed
abstract class SurahState with _$SurahState {
  const factory SurahState.initial() = SurahInitial;
  const factory SurahState.loading() = SurahLoading;
  const factory SurahState.loaded(List<SurahEntity> listSurah) = SurahLoaded;
  const factory SurahState.searched(List<SurahEntity> filteredSurah) =
      SurahSearched;
  const factory SurahState.error(String message) = SurahError;
}
