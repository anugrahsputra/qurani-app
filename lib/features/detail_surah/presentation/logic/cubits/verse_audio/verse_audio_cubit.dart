import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

import '../../../../../../core/core.dart';
import '../../../../domain/domain.dart';

part 'verse_audio_cubit.freezed.dart';
part 'verse_audio_state.dart';

class VerseAudioCubit extends Cubit<VerseAudioState> {
  final AudioPlayerManager audioPlayerManager;
  final GetSurahAudioUsecase getSurahAudioUsecase;
  late AudioPlayer? player;

  final Logger log = Logger('VerseAudioCubit');

  int currentIndex = 0;

  PlayerState playerState = PlayerState.stopped;
  VerseAudioCubit({
    required this.audioPlayerManager,
    required this.player,
    required this.getSurahAudioUsecase,
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
      log.info('before stopAllExcept');
      audioPlayerManager.stopAllExcept(verseNumber);
      log.info('after stopAllExcept');
      emit(VersePlaying(verseNumber));
      await player?.play(UrlSource(audioSource));
      player?.state = PlayerState.playing;
    } catch (e) {
      emit(const VerseStopped());
      stopVerse();
    }
  }

  Future<void> playAllVerse(
    int surahNumber,
  ) async {
    emit(const VerseLoading());
    final result = await getSurahAudioUsecase(surahNumber);
    result.fold((l) {
      emit(const VerseStopped());
      stopVerse();
    }, (r) {
      audioPlayerManager.stopAllExcept(surahNumber.toString());
      log.info('after stopAllExcept');
      emit(VersePlayingAll(r.chapterId.toString()));
      player?.play(UrlSource(r.audioUrl));
      player?.state = PlayerState.playing;
    });
  }

  Future<void> resetVerse() async {
    await player?.stop();
    audioPlayerManager.stopAll();
    player?.state = PlayerState.stopped;
    currentIndex = 0;
    log.info('Verse Reset');
  }

  Future<void> stopVerse() async {
    await player?.stop();
    emit(const VerseStopped());
    player?.state = PlayerState.stopped;
    log.info('Verse Stopped');
  }
}
