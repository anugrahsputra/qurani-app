import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/ayah/ayah.dart';

import '../../dummy_data/ayah_dummy.dart';
import '../../helper/mock.mocks.dart';

void main() {
  late GetAyahUsecase getAyahUsecase;
  late MockAyahRepository mockAyahRepository;

  setUp(() {
    mockAyahRepository = MockAyahRepository();
    getAyahUsecase = GetAyahUsecase(repository: mockAyahRepository);
  });

  test('should get ayah from the repository', () async {
    when(
      mockAyahRepository.getAyah(any, any),
    ).thenAnswer((_) async => const Right(tAyahRes));

    final result = await getAyahUsecase.call(1, 1);

    expect(result, const Right(tAyahRes));
    verify(mockAyahRepository.getAyah(1, 1));
    verifyNoMoreInteractions(mockAyahRepository);
  });
}
