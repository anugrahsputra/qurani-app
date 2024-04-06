part of 'ayahs_bloc.dart';

// @freezed
// class AyahsEvent with _$AyahsEvent {
//   const factory AyahsEvent.onGetAyah(int surahNumber, int ayahNumber) =
//       OnGetAyah;

//   const factory AyahsEvent.onGetRandomAyah() = OnGetRandomAyah;
// }

abstract class AyahsEvent extends Equatable {
  const AyahsEvent();

  @override
  List<Object> get props => [];
}

class OnGetAyah extends AyahsEvent {
  final int surahNumber;
  final int ayahNumber;

  const OnGetAyah(this.surahNumber, this.ayahNumber);

  @override
  List<Object> get props => [surahNumber, ayahNumber];
}

class OnGetRandomAyah extends AyahsEvent {}
