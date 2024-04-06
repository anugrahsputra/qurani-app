import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

import '../../../../../../core/core.dart';
import '../../../domain/domain.dart';

// part 'verse_audio_cubit.freezed.dart';
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
  }) : super(VerseInitial());

  Future<void> playVerse(
    String verseNumber,
    String audioSource,
  ) async {
    try {
      emit(VerseLoading(verseNumber));
      audioPlayerManager.stopAllExcept(verseNumber);
      emit(VersePlaying(verseNumber, Duration.zero, Duration.zero));
      Duration? duration;
      player?.onDurationChanged.listen((newDuration) {
        duration = newDuration;
        emit(VersePlaying(
          verseNumber,
          Duration.zero,
          duration ?? Duration.zero,
        ));
      });
      player?.onPositionChanged.listen((position) {
        if (duration != null) {
          emit(VersePlaying(verseNumber, position, duration!));
        }
      });
      await player?.play(UrlSource(audioSource));
      player?.state = PlayerState.playing;
      player?.onPlayerComplete.listen((event) {
        stopVerse();
      });
    } catch (e) {
      emit(VerseStopped());
      stopVerse();
    }
  }

  Future<void> playAllVerse(
    int surahNumber,
  ) async {
    emit(VerseLoading(surahNumber.toString()));
    final result = await getSurahAudioUsecase(surahNumber);
    result.fold((l) {
      emit(VerseStopped());
      stopVerse();
    }, (r) {
      audioPlayerManager.stopAllExcept(surahNumber.toString());

      emit(VersePlayingAll(
        surahNumber.toString(),
        Duration.zero,
        Duration.zero,
      ));
      Duration? duration;
      player?.onDurationChanged.listen((newDuration) {
        duration = newDuration;
        emit(VersePlayingAll(
          surahNumber.toString(),
          Duration.zero,
          duration ?? Duration.zero,
        ));
      });
      player?.onPositionChanged.listen((position) {
        if (duration != null) {
          emit(VersePlayingAll(
              surahNumber.toString(), position, duration ?? Duration.zero));
        }
      });
      player?.play(UrlSource(r.audioUrl), position: Duration.zero);
      player?.state = PlayerState.playing;
      player?.onPlayerComplete.listen((event) {
        stopVerse();
      });
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
    emit(VerseStopped());
    player?.state = PlayerState.stopped;
    log.info('Verse Stopped');
  }
}
