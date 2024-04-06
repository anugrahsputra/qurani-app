import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/ayah/ayah.dart';

import '../../dummy_data/ayah_dummy.dart';
import '../../helper/mock.dart';

void main() {
  late AyahsBloc ayahsBloc;
  late MockGetRandomAyahUsecase mockGetRandomAyahUsecase;
  late MockGetAyahUsecase mockGetAyahUsecase;

  setUp(() {
    mockGetRandomAyahUsecase = MockGetRandomAyahUsecase();
    mockGetAyahUsecase = MockGetAyahUsecase();
    ayahsBloc = AyahsBloc(
        getRandomAyahUsecase: mockGetRandomAyahUsecase,
        getAyahUsecase: mockGetAyahUsecase);
  });

  test('initial state is AyahsInitial', () {
    expect(ayahsBloc.state, AyahInitial());
  });

  blocTest<AyahsBloc, AyahsState>(
    'emits [AyahLoading, AyahLoaded] when OnGetayah is added.',
    build: () {
      when(mockGetAyahUsecase.call(1, 1))
          .thenAnswer((_) async => const Right(tAyahRes));

      return ayahsBloc;
    },
    act: (bloc) => bloc.add(const OnGetAyah(1, 1)),
    expect: () => <AyahsState>[
      AyahLoading(),
      AyahLoaded(tAyahRes.data),
    ],
  );
  blocTest<AyahsBloc, AyahsState>(
    'emits [AyahLoading, AyahLoaded] when OnGetRandomAyah is added.',
    build: () {
      when(mockGetRandomAyahUsecase.call())
          .thenAnswer((_) async => const Right(tAyahRes));

      return ayahsBloc;
    },
    act: (bloc) => bloc.add(OnGetRandomAyah()),
    expect: () => <AyahsState>[
      AyahLoading(),
      AyahLoaded(tAyahRes.data),
    ],
  );
}
