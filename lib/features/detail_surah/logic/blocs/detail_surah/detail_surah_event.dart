part of 'detail_surah_bloc.dart';

// @freezed
// class DetailSurahEvent with _$DetailSurahEvent {
//   const factory DetailSurahEvent.onGetDetail(int surahNumber) = OnGetDetail;
// }

abstract class DetailSurahEvent extends Equatable {
  const DetailSurahEvent();

  @override
  List<Object> get props => [];
}

class OnGetDetail extends DetailSurahEvent {
  final int surahNumber;

  const OnGetDetail(this.surahNumber);

  @override
  List<Object> get props => [surahNumber];
}
