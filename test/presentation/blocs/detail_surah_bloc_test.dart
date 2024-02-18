import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/detail_surah/presentation/logic/logic.dart';

import '../../dummy_data/surah_detaiLdummy.dart';
import '../../helper/mock.dart';
import '../../helper/mock.mocks.dart';

void main() {
  late DetailSurahBloc detailSurahBloc;
  late MockGetSurahDetailUseCase mockGetSurahDetailUseCase;

  setUp(() {
    mockGetSurahDetailUseCase = MockGetSurahDetailUseCase();
    detailSurahBloc =
        DetailSurahBloc(getSurahDetailUsecase: mockGetSurahDetailUseCase);
  });

  blocTest<DetailSurahBloc, DetailSurahState>(
    'emits [DetailSurahLoading, DetailSurahLoaded] when OnGetSurah is added.',
    build: () {
      when(mockGetSurahDetailUseCase.execute(1))
          .thenAnswer((_) async => const Right(tSurahDetailRes));

      return detailSurahBloc;
    },
    act: (bloc) => bloc.add(const OnGetDetail(1)),
    expect: () => <DetailSurahState>[
      const DetailSurahLoading(),
      DetailSurahLoaded(tSurahDetailRes.data!),
    ],
  );

  blocTest<DetailSurahBloc, DetailSurahState>(
    'emits [DetailSurahLoading, DetailSurahError] when OnGetSurah is added.',
    build: () {
      when(mockGetSurahDetailUseCase.execute(1)).thenAnswer(
          (_) async => const Left(ServerFailure(message: "Server Error")));

      return detailSurahBloc;
    },
    act: (bloc) => bloc.add(const OnGetDetail(1)),
    expect: () => <DetailSurahState>[
      const DetailSurahLoading(),
      const DetailSurahError("Server Error"),
    ],
  );
}
