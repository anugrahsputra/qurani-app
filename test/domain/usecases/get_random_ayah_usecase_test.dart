import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/ayah/ayah.dart';

import '../../dummy_data/ayah_dummy.dart';
import '../../helper/mock.mocks.dart';

void main() {
  late GetRandomAyahUsecase getRandomAyahUsecase;
  late MockAyahRepository mockAyahRepository;

  setUp(() {
    mockAyahRepository = MockAyahRepository();
    getRandomAyahUsecase = GetRandomAyahUsecase(repository: mockAyahRepository);
  });

  test('should get ayah from the repository', () async {
    when(
      mockAyahRepository.getRandomAyah(),
    ).thenAnswer((_) async => const Right(tAyahRes));

    final result = await getRandomAyahUsecase.call();

    expect(result, const Right(tAyahRes));
    verify(mockAyahRepository.getRandomAyah());
    verifyNoMoreInteractions(mockAyahRepository);
  });
}
