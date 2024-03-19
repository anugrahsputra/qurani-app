import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/detail_surah/domain/domain.dart';

import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/mock.dart';

void main() {
  late GetSurahDetailUseCase usecase;
  late MockSurahDetailRepository mockSurahDetailRepository;

  setUp(() {
    mockSurahDetailRepository = MockSurahDetailRepository();
    usecase = GetSurahDetailUseCase(repository: mockSurahDetailRepository);
  });

  const tSurahNumber = 1;

  test('should get surah detail from the repository', () async {
    when(mockSurahDetailRepository.getDetailSurah(tSurahNumber))
        .thenAnswer((_) async => const Right(tSurahDetailRes));

    final result = await usecase.execute(tSurahNumber);

    expect(result, const Right(tSurahDetailRes));
    verify(mockSurahDetailRepository.getDetailSurah(tSurahNumber));
    verifyNoMoreInteractions(mockSurahDetailRepository);
  });
}
