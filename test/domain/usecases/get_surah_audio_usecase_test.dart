import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

import '../../dummy_data/audio_file_dummy.dart';
import '../../helper/mock.dart';

void main() {
  late GetSurahAudioUsecase usecase;
  late MockSurahDetailRepository mockSurahDetailRepository;

  setUp(() {
    mockSurahDetailRepository = MockSurahDetailRepository();
    usecase = GetSurahAudioUsecase(mockSurahDetailRepository);
  });

  const tSurahNumber = 1;

  test('should get surah detail from the repository', () async {
    when(
      mockSurahDetailRepository.getFullAudio(tSurahNumber),
    ).thenAnswer((_) async => const Right(tAudioFile));

    final result = await usecase.call(tSurahNumber);

    expect(result, const Right(tAudioFile));
    verify(mockSurahDetailRepository.getFullAudio(tSurahNumber));
    verifyNoMoreInteractions(mockSurahDetailRepository);
  });
}
