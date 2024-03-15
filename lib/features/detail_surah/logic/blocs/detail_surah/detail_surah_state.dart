part of 'detail_surah_bloc.dart';

@freezed
class DetailSurahState with _$DetailSurahState {
  const factory DetailSurahState.initial() = DetailSurahInitial;
  const factory DetailSurahState.loading() = DetailSurahLoading;
  const factory DetailSurahState.loaded(SurahDetail detailSurah) =
      DetailSurahLoaded;
  const factory DetailSurahState.error(String message) = DetailSurahError;
}
