import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/surah/surah.dart';

import '../../helper/mock.dart';

void main() {
  late SurahBloc surahBloc;
  late MockGetSurahsUseCase mockGetSurahsUseCase;

  setUp(() {
    mockGetSurahsUseCase = MockGetSurahsUseCase();
    surahBloc = SurahBloc(getSurahsUseCase: mockGetSurahsUseCase);
  });

  const tSurahResEntity = SurahResEntity(
    code: 0,
    status: "",
    message: "",
    data: [],
  );

  blocTest<SurahBloc, SurahState>(
    'should emit [SurahLoading, SurahLoaded] when data gotten is successful',
    build: () {
      when(mockGetSurahsUseCase())
          .thenAnswer((_) async => const Right(tSurahResEntity));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnGetSurah()),
    expect: () => [
      SurahLoading(),
      SurahLoaded(tSurahResEntity.data),
    ],
  );

  blocTest(
    'should emit [SurahLoading, SurahError] when data gotten is unsuccessful',
    build: () {
      when(mockGetSurahsUseCase())
          .thenAnswer((_) async => const Left(ServerFailure(message: "error")));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnGetSurah()),
    expect: () => [
      SurahLoading(),
      const SurahError("error"),
    ],
  );
}
