import 'dart:async';
import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/core.dart';

part 'verse_audio_cubit.freezed.dart';
part 'verse_audio_state.dart';

class VerseAudioCubit extends Cubit<VerseAudioState> {
  final AudioPlayerManager audioPlayerManager;
  late AudioPlayer? player;

  PlayerState playerState = PlayerState.stopped;
  VerseAudioCubit({
    required this.audioPlayerManager,
    required this.player,
  }) : super(const VerseInitial()) {
    player?.onPlayerComplete.listen((event) {
      stopVerse();
    });
  }

  Future<void> playVerse(
    String verseNumber,
    String audioSource,
  ) async {
    try {
      emit(const VerseLoading());
      log('before stopAllExcept');
      audioPlayerManager.stopAllExcept(verseNumber);
      log('after stopAllExcept');
      emit(VersePlaying(verseNumber));
      await player?.play(UrlSource(audioSource));
      player?.state = PlayerState.playing;
    } catch (e) {
      emit(const VerseStopped());
      stopVerse();
    }
  }

  void stopVerse() async {
    await player?.stop();
    emit(const VerseStopped());
    player?.state = PlayerState.stopped;
    log('Verse Stopped');
  }
}
