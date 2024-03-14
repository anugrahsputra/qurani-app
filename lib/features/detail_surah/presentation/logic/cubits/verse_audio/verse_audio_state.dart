part of 'verse_audio_cubit.dart';

@freezed
class VerseAudioState with _$VerseAudioState {
  const factory VerseAudioState.initial() = VerseInitial;
  const factory VerseAudioState.loading(
    String verseNumber,
  ) = VerseLoading;
  const factory VerseAudioState.playing(
    String verseNumber,
    Duration position,
    Duration duration,
  ) = VersePlaying;
  const factory VerseAudioState.playingAll(
    String surahNumber,
    Duration position,
    Duration duration,
  ) = VersePlayingAll;
  const factory VerseAudioState.stopped() = VerseStopped;
  const factory VerseAudioState.paused() = VersePaused;
}
