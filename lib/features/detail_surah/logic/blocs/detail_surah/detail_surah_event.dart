part of 'detail_surah_bloc.dart';

@freezed
class DetailSurahEvent with _$DetailSurahEvent {
  const factory DetailSurahEvent.onGetDetail(int surahNumber) = OnGetDetail;
}
