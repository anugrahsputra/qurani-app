part of 'verse_audio_cubit.dart';

@freezed
class VerseAudioState with _$VerseAudioState {
  const factory VerseAudioState.initial() = VerseInitial;
  const factory VerseAudioState.loading(String verseNumber) = VerseLoading;
  const factory VerseAudioState.playing(String verseNumber) = VersePlaying;
  const factory VerseAudioState.playingAll(String surahNumber) =
      VersePlayingAll;
  const factory VerseAudioState.stopped() = VerseStopped;
  const factory VerseAudioState.paused() = VersePaused;
}
