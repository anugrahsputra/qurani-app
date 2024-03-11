import 'package:audioplayers/audioplayers.dart';
import 'package:logging/logging.dart';

abstract class AudioPlayerManager {
  AudioPlayer verseAudio(String? verseNumber);
  void stopAllExcept(String? verseNumber);
  void stopAll();
}

class AudioPlayerManagerImpl implements AudioPlayerManager {
  final Map<String?, AudioPlayer> audioPlayers;

  final Logger log = Logger('AudioPlayerManager');

  AudioPlayerManagerImpl({required this.audioPlayers});

  @override
  void stopAll() {
    audioPlayers.forEach((key, player) {
      player.stop();
      log.info('Stopping audio player for verse $key');
    });
  }

  @override
  void stopAllExcept(String? verseNumber) {
    audioPlayers.forEach((key, player) {
      if (key != verseNumber) {
        player.stop();
        log.info('Stopping all audio except for verse $key');
      }
    });
  }

  @override
  AudioPlayer verseAudio(String? verseNumber) {
    if (!audioPlayers.containsKey(verseNumber)) {
      audioPlayers[verseNumber] = AudioPlayer(playerId: verseNumber);
    }
    return audioPlayers[verseNumber]!;
  }
}
