part of 'surah_bloc.dart';

@freezed
abstract class SurahState with _$SurahState {
  const factory SurahState.initial() = SurahInitial;
  const factory SurahState.loading() = SurahLoading;
  const factory SurahState.loaded(List<SurahEntity> listSurah) = SurahLoaded;

  const factory SurahState.error(String message) = SurahError;
}

// abstract class SurahState extends Equatable {
//   const SurahState();

//   @override
//   List<Object> get props => [];
// }

// class SurahInitial extends SurahState {}

// class SurahLoading extends SurahState {}

// class SurahLoaded extends SurahState {
//   final List<SurahEntity> listSurah;

//   const SurahLoaded(this.listSurah);

//   @override
//   List<Object> get props => [listSurah];
// }

// class SurahError extends SurahState {
//   final String message;

//   const SurahError(this.message);

//   @override
//   List<Object> get props => [message];
// }
