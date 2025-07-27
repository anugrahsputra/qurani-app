part of 'detail_surah_bloc.dart';

@freezed
abstract class DetailSurahEvent with _$DetailSurahEvent {
  const factory DetailSurahEvent.onGetDetail(int surahNumber) = OnGetDetail;
  const factory DetailSurahEvent.onGetSurahAudio(int surahNumber) =
      OnGetSurahAudio;
}