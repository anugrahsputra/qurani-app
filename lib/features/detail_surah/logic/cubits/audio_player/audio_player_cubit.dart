import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logging/logging.dart';

import '../../../../../core/core.dart';
import '../../../detail_surah.dart';

part 'audio_player_cubit.freezed.dart';
part 'audio_player_state.dart';

class AudioPlayerCubit extends Cubit<AudioPlayerState> {
  final AudioHelper audioHelper;

  final Logger _log = Logger('Audio player cubit');

  AudioPlayerCubit({required this.audioHelper}) : super(const AudioInitial());

  Future<void> playAudioFromList(List<Verse> audio) async {
    try {
      final playlist = ConcatenatingAudioSource(
        children: audio
            .map((e) => AudioSource.uri(Uri.parse(e.audio!.primary!)))
            .toList(),
      );
      await audioHelper.setAudioSource(playlist);
      await audioHelper.play();
      emit(const PlayAudio());
    } catch (e) {
      _log.warning(e.toString());
      rethrow;
    }
  }

  Future<void> playFullAudio(String audioUrl) async {
    try {
      emit(const AudioLoading());
      await audioHelper.setUrl(audioUrl);
      await audioHelper.play();
      emit(const PlayAudio());
    } catch (e) {
      _log.warning(e.toString());
      rethrow;
    }
  }

  Future<void> stopAudio() async {
    await audioHelper.stop();
    emit(const StopAudio());
  }

  Future<void> next() async {
    await audioHelper.seekToNext();
  }

  Future<void> previous() async {
    await audioHelper.seekToPrevious();
  }
}
