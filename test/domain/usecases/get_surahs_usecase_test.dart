import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/surah/surah.dart';

import '../../helper/mock.dart';

void main() {
  late GetSurahsUseCase getSurahsUseCase;
  late MockBaseSurahRepository mockBaseSurahRepository;

  setUp(() {
    mockBaseSurahRepository = MockBaseSurahRepository();
    getSurahsUseCase = GetSurahsUseCase(mockBaseSurahRepository);
  });

  const tSurahResEntity = SurahResEntity(
    code: 0,
    status: "",
    message: "",
    data: [],
  );
  test('should get surahs from the repository', () async {
    when(
      mockBaseSurahRepository.getSurahs(),
    ).thenAnswer((_) async => const Right(tSurahResEntity));

    final result = await getSurahsUseCase();

    expect(result, const Right(tSurahResEntity));
    verify(mockBaseSurahRepository.getSurahs());
  });
}
