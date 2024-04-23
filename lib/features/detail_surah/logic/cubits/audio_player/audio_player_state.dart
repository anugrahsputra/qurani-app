part of 'audio_player_cubit.dart';

@freezed
class AudioPlayerState with _$AudioPlayerState {
  const factory AudioPlayerState.initial() = AudioInitial;
  const factory AudioPlayerState.loading() = AudioLoading;
  const factory AudioPlayerState.play() = PlayAudio;
  const factory AudioPlayerState.stop() = StopAudio;
}
