import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/surah/data/data.dart';
import 'package:qurani/features/surah/domain/domain.dart';

import '../../helper/mock.dart';

void main() {
  late BaseSurahRepository repository;
  late MockRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = SurahRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  group('getSurahs', () {
    const tSurahRes = SurahRes(
      code: 0,
      status: "",
      message: "",
      data: [],
    );

    test(
        'should return SurahResEntity when the call to remote data source is successful',
        () async {
      when(mockRemoteDataSource.getSurahs()).thenAnswer((_) async => tSurahRes);

      final result = await repository.getSurahs();

      verify(mockRemoteDataSource.getSurahs());
      final resultData = result.getOrElse(() => tSurahRes.toEntity());
      expect(resultData, tSurahRes.toEntity());
    });

    test(
        'should return ServerFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockRemoteDataSource.getSurahs()).thenThrow(ServerException());

      final result = await repository.getSurahs();

      expect(result, const Left(ServerFailure(message: 'server failure')));
      verify(mockRemoteDataSource.getSurahs());
    });

    test(
        'should return RequestFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockRemoteDataSource.getSurahs()).thenThrow(BadRequestException());

      final result = await repository.getSurahs();

      expect(result, const Left(RequestFailure(message: 'bad request')));
      verify(mockRemoteDataSource.getSurahs());
    });

    test(
        'should return NetworkFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockRemoteDataSource.getSurahs()).thenThrow(NetworkException());

      final result = await repository.getSurahs();

      expect(result, const Left(NetworkFailure(message: 'network failure')));
      verify(mockRemoteDataSource.getSurahs());
    });

    test(
        'should return UnknownFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockRemoteDataSource.getSurahs()).thenThrow(UnknownException());

      final result = await repository.getSurahs();

      expect(result, const Left(UnknownFailure(message: 'unknown failure')));
      verify(mockRemoteDataSource.getSurahs());
    });
  });
}
