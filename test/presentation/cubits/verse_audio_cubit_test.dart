import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

import '../../helper/mock.dart';

void main() {
  late VerseAudioCubit verseAudioCubit;
  late MockAudioPlayer mockAudioPlayer;
  late MockAudioPlayerManager mockAudioPlayerManager;

  setUp(() {
    mockAudioPlayer = MockAudioPlayer();
    mockAudioPlayerManager = MockAudioPlayerManager();
    verseAudioCubit = VerseAudioCubit(
      audioPlayerManager: mockAudioPlayerManager,
      player: mockAudioPlayer,
    );
  });

  test('initial state is VerseInitial', () {
    final verseAudioCubit = VerseAudioCubit(
      audioPlayerManager: mockAudioPlayerManager,
      player: mockAudioPlayer,
    );
    expect(verseAudioCubit.state, const VerseInitial());
  });

  blocTest(
    'should emit [VerseLoading, VersePlaying, VerseStopped] when called',
    build: () {
      when(mockAudioPlayer.play(any)).thenAnswer((_) => Future.value());
      return verseAudioCubit;
    },
    act: (cubit) => cubit.playVerse('1', 'audioSource'),
    expect: () => [
      const VerseLoading(),
      const VersePlaying('1'),
    ],
  );

  blocTest(
    'should emit [VerseStopped] when called',
    build: () {
      when(mockAudioPlayer.stop()).thenAnswer((_) => Future.value());
      return verseAudioCubit;
    },
    act: (cubit) => cubit.stopVerse(),
    expect: () => [const VerseStopped()],
  );
}
