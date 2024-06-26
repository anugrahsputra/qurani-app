import 'package:audioplayers/audioplayers.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

import '../../dummy_data/audio_file_dummy.dart';
import '../../helper/injection.dart';
import '../../helper/mock.dart';

void main() {
  late VerseAudioCubit verseAudioCubit;
  late MockAudioPlayer mockAudioPlayer;
  late AudioPlayerManager mockAudioPlayerManager;
  late GetSurahAudioUsecase mockGetSurahAudioUsecase;

  setUp(() {
    registerSl();
    mockAudioPlayer = getMockAudioPlayer();
    mockAudioPlayerManager = getMockAudioPlayerManager();
    mockGetSurahAudioUsecase = getMockGetSurahAudioUsecase();
    verseAudioCubit = VerseAudioCubit(
      getSurahAudioUsecase: mockGetSurahAudioUsecase,
      audioPlayerManager: mockAudioPlayerManager,
      player: mockAudioPlayer,
    );
  });

  tearDown(() {
    unregisterSl();
  });

  test('initial state is VerseInitial', () {
    final verseAudioCubit = VerseAudioCubit(
      audioPlayerManager: mockAudioPlayerManager,
      player: mockAudioPlayer,
      getSurahAudioUsecase: mockGetSurahAudioUsecase,
    );
    expect(verseAudioCubit.state, const VerseInitial());
  });

  test('reset verse', () async {
    when(mockAudioPlayer.stop()).thenAnswer((_) => Future.value());
    await verseAudioCubit.resetVerse();
    verify(mockAudioPlayer.stop()).called(1);
  });

  blocTest(
    'should emit [VerseLoading, VersePlaying, VerseStopped] when called',
    build: () {
      var source = UrlSource('audiosource');
      when(mockAudioPlayer.play(source)).thenAnswer((_) => Future.value());
      return verseAudioCubit;
    },
    act: (cubit) => cubit.playVerse('1', 'audioSource'),
    expect: () => [
      const VerseLoading('1'),
      const VersePlaying('1'),
    ],
  );

  blocTest<VerseAudioCubit, VerseAudioState>(
    'emits [VerseStopped] when an exception is thrown in playVerse',
    build: () {
      when(mockAudioPlayer.play(any)).thenThrow(Exception('Failed to play'));
      return verseAudioCubit;
    },
    act: (cubit) => cubit.playVerse('1', 'audioSource'),
    expect: () => [
      const VerseLoading('1'),
      const VersePlaying('1'),
      const VerseStopped(),
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

  blocTest(
    'should emit [VerseLoading, VerseStopped] when getSurahAudioUsecase returns an error',
    build: () {
      when(mockGetSurahAudioUsecase(1)).thenAnswer(
          (_) => Future.value(const Left(ServerFailure(message: ''))));
      return verseAudioCubit;
    },
    act: (cubit) => cubit.playAllVerse(1),
    expect: () => [
      const VerseLoading('1'),
      const VerseStopped(),
    ],
  );

  blocTest(
    'should emit [VerseLoading, VersePlayingAll, PlayerState.playing] when getSurahAudioUsecase returns success',
    build: () {
      when(mockGetSurahAudioUsecase(1))
          .thenAnswer((_) => Future.value(const Right(tAudioFile)));
      return verseAudioCubit;
    },
    act: (cubit) => cubit.playAllVerse(1),
    expect: () => [
      const VerseLoading('1'),
      const VersePlayingAll('1'),
    ],
  );
}
