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
    data: [
      SurahEntity(
        number: 1,
        sequence: 1,
        numberOfVerses: 1,
        name: NameEntity(
          short: "Al-Fatihah",
          long: "Al-Fatihah",
          transliteration: TranslationEntity(
            en: "Al-Fatihah",
            id: "Al-Fatihah",
          ),
          translation: TranslationEntity(en: "", id: ""),
        ),
        revelation: RevelationEntity(arab: "", en: "", id: ""),
        tafsir: TafsirEntity(id: ""),
      ),
    ],
  );

  blocTest<SurahBloc, SurahState>(
    'should emit [SurahLoading, SurahLoaded] when data gotten is successful',
    build: () {
      when(
        mockGetSurahsUseCase(),
      ).thenAnswer((_) async => const Right(tSurahResEntity));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnGetSurah()),
    expect: () => [const SurahLoading(), SurahLoaded(tSurahResEntity.data)],
  );

  blocTest(
    'should emit [SurahLoading, SurahError] when data gotten is unsuccessful',
    build: () {
      when(
        mockGetSurahsUseCase(),
      ).thenAnswer((_) async => const Left(ServerFailure(message: "error")));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnGetSurah()),
    expect: () => [const SurahLoading(), const SurahError("error")],
  );

  blocTest<SurahBloc, SurahState>(
    'should emit [SurahLoading, SurahSearched] when search query is provided',
    build: () {
      when(
        mockGetSurahsUseCase(),
      ).thenAnswer((_) async => const Right(tSurahResEntity));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnSearchSurah("Al-Fatihah")),
    wait: const Duration(milliseconds: 600),
    expect: () => [const SurahLoading(), SurahSearched(tSurahResEntity.data)],
  );

  blocTest<SurahBloc, SurahState>(
    'should emit [SurahLoading, SurahLoaded] when search query is empty',
    build: () {
      when(
        mockGetSurahsUseCase(),
      ).thenAnswer((_) async => const Right(tSurahResEntity));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnSearchSurah("")),
    wait: const Duration(milliseconds: 600),
    expect: () => [const SurahLoading(), SurahLoaded(tSurahResEntity.data)],
  );

  blocTest(
    'should emit [SurahLoading, SurahError] when data gotten is unsuccessful',
    build: () {
      when(
        mockGetSurahsUseCase(),
      ).thenAnswer((_) async => const Left(ServerFailure(message: "error")));
      return surahBloc;
    },
    act: (bloc) => bloc.add(const OnSearchSurah("Al-Fatihah")),
    wait: const Duration(milliseconds: 600),
    expect: () => [const SurahLoading(), const SurahError("error")],
  );
}
