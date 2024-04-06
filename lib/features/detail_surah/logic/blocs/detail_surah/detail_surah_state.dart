part of 'detail_surah_bloc.dart';

// @freezed
// class DetailSurahState with _$DetailSurahState {
//   const factory DetailSurahState.initial() = DetailSurahInitial;
//   const factory DetailSurahState.loading() = DetailSurahLoading;
//   const factory DetailSurahState.loaded(SurahDetail detailSurah) =
//       DetailSurahLoaded;
//   const factory DetailSurahState.error(String message) = DetailSurahError;
// }

abstract class DetailSurahState extends Equatable {
  const DetailSurahState();

  @override
  List<Object> get props => [];
}

class DetailSurahInitial extends DetailSurahState {}

class DetailSurahLoading extends DetailSurahState {}

class DetailSurahLoaded extends DetailSurahState {
  final SurahDetail detailSurah;

  const DetailSurahLoaded(this.detailSurah);

  @override
  List<Object> get props => [detailSurah];
}

class DetailSurahError extends DetailSurahState {
  final String message;

  const DetailSurahError(this.message);

  @override
  List<Object> get props => [message];
}
