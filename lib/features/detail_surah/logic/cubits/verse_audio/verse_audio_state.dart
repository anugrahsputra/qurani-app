part of 'verse_audio_cubit.dart';

// @freezed
// class VerseAudioState with _$VerseAudioState {
//   const factory VerseAudioState.initial() = VerseInitial;
//   const factory VerseAudioState.loading(
//     String verseNumber,
//   ) = VerseLoading;
//   const factory VerseAudioState.playing(
//     String verseNumber,
//     Duration? position,
//     Duration? duration,
//   ) = VersePlaying;
//   const factory VerseAudioState.playingAll(
//     String surahNumber,
//     Duration? position,
//     Duration? duration,
//   ) = VersePlayingAll;
//   const factory VerseAudioState.stopped() = VerseStopped;
//   const factory VerseAudioState.paused() = VersePaused;
// }

abstract class VerseAudioState extends Equatable {
  const VerseAudioState();

  @override
  List<Object> get props => [];
}

class VerseInitial extends VerseAudioState {}

class VerseLoading extends VerseAudioState {
  final String verseNumber;

  const VerseLoading(this.verseNumber);

  @override
  List<Object> get props => [verseNumber];
}

class VersePlaying extends VerseAudioState {
  final String verseNumber;
  final Duration? position;
  final Duration? duration;

  const VersePlaying(this.verseNumber, this.position, this.duration);

  @override
  List<Object> get props => [verseNumber, position!, duration!];
}

class VersePlayingAll extends VerseAudioState {
  final String surahNumber;
  final Duration? position;
  final Duration? duration;

  const VersePlayingAll(this.surahNumber, this.position, this.duration);

  @override
  List<Object> get props => [surahNumber, position!, duration!];
}

class VerseStopped extends VerseAudioState {}

class VersePaused extends VerseAudioState {}
