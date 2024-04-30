part of 'surah_bloc.dart';

@freezed
abstract class SurahEvent with _$SurahEvent {
  const factory SurahEvent.onGetSurah() = OnGetSurah;
}

// abstract class SurahEvent extends Equatable {
//   const SurahEvent();

//   @override
//   List<Object> get props => [];
// }

// class OnGetSurah extends SurahEvent {
//   const OnGetSurah();
// }
