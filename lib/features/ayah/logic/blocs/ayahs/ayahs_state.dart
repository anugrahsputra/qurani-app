part of 'ayahs_bloc.dart';

// @freezed
// class AyahsState with _$AyahsState {
//   const factory AyahsState.initial() = AyahInitial;
//   const factory AyahsState.loading() = AyahLoading;
//   const factory AyahsState.loaded(Ayah ayah) = AyahLoaded;
//   const factory AyahsState.error(String message) = AyahError;
// }

abstract class AyahsState extends Equatable {
  const AyahsState();

  @override
  List<Object> get props => [];
}

class AyahInitial extends AyahsState {}

class AyahLoading extends AyahsState {}

class AyahLoaded extends AyahsState {
  final Ayah ayah;

  const AyahLoaded(this.ayah);

  @override
  List<Object> get props => [ayah];
}

class AyahError extends AyahsState {
  final String message;

  const AyahError(this.message);

  @override
  List<Object> get props => [message];
}
