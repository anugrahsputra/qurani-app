import 'package:just_audio/just_audio.dart';

/// A helper class for managing audio playback.
/// Copying methods from just_audio package
abstract class AudioHelper {
  /// Sets the URL of the audio source.
  ///
  /// The [url] parameter is the URL of the audio source to be set.
  Future<void> setUrl(String url);

  /// Sets the audio source.
  ///
  /// The [source] parameter is the audio source to be set.
  /// The [preload] parameter indicates whether the audio should be preloaded (default: true).
  /// The [initialIndex] parameter is the initial index of the audio source (optional).
  /// The [initialPosition] parameter is the initial position of the audio source (optional).
  Future<void> setAudioSource(
    AudioSource source, {
    bool preload = true,
    int? initialIndex,
    Duration? initialPosition,
  });

  /// Starts playing the audio.
  Future<void> play();

  /// Stops playing the audio.
  Future<void> stop();

  /// Seeks to the next audio track.
  Future<void> seekToNext();

  /// Seeks to the previous audio track.
  Future<void> seekToPrevious();

  /// Disposes the audio resources.
  void dispose();
}

class AudioHelperImpl implements AudioHelper {
  final AudioPlayer audioPlayer;

  AudioHelperImpl({required this.audioPlayer});

  @override
  Future<void> play() async => await audioPlayer.play();

  @override
  Future<void> setUrl(String url) async => await audioPlayer.setUrl(url);

  @override
  Future<void> stop() async => await audioPlayer.stop();

  @override
  void dispose() => audioPlayer.dispose();

  @override
  Future<void> setAudioSource(
    AudioSource source, {
    bool preload = true,
    int? initialIndex,
    Duration? initialPosition,
  }) async =>
      await audioPlayer.setAudioSource(
        source,
        initialIndex: initialIndex,
        initialPosition: initialPosition,
      );

  @override
  Future<void> seekToNext() async => await audioPlayer.seekToNext();

  @override
  Future<void> seekToPrevious() async => await audioPlayer.seekToPrevious();
}
