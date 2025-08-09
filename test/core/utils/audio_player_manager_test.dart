import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/utils/audio_player_manager.dart';

import '../../helper/mock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late AudioPlayerManagerImpl manager;
  late MockAudioPlayer mockPlayer;

  setUp(() {
    mockPlayer = MockAudioPlayer();
    manager = AudioPlayerManagerImpl(audioPlayers: {'1': mockPlayer});
  });

  group('AudioPlayerManager', () {
    test('returns existing player for known verse number', () {
      final player = manager.verseAudio('1');
      expect(player, same(mockPlayer));
    });

    test('stopAll stops all players', () {
      final mockPlayer1 = MockAudioPlayer();
      final mockPlayer2 = MockAudioPlayer();
      final manager = AudioPlayerManagerImpl(
        audioPlayers: {'1': mockPlayer1, '2': mockPlayer2},
      );

      manager.stopAll();

      verify(mockPlayer1.stop()).called(1);
      verify(mockPlayer2.stop()).called(1);
    });
    test(
      'stopAllExcept stops all players except the one with the given verse number',
      () {
        final mockPlayer1 = MockAudioPlayer();
        final mockPlayer2 = MockAudioPlayer();
        final manager = AudioPlayerManagerImpl(
          audioPlayers: {'1': mockPlayer1, '2': mockPlayer2},
        );

        manager.stopAllExcept('2');

        verify(mockPlayer1.stop()).called(1);
        verifyNever(mockPlayer2.stop());
      },
    );
  });
}
