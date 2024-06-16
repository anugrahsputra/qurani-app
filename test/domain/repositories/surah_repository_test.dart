import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/surah/data/data.dart';
import 'package:qurani/features/surah/domain/domain.dart';

import '../../helper/mock.dart';

void main() {
  late BaseSurahRepository repository;
  late MockSurahRemoteDataSource mockSurahRemoteDataSource;

  setUp(() {
    mockSurahRemoteDataSource = MockSurahRemoteDataSource();
    repository =
        SurahRepositoryImpl(remoteDataSource: mockSurahRemoteDataSource);
  });

  final RequestOptions requestOptions = RequestOptions(path: '');

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
      when(mockSurahRemoteDataSource.getSurahs())
          .thenAnswer((_) async => tSurahRes);

      final result = await repository.getSurahs();

      verify(mockSurahRemoteDataSource.getSurahs());
      final resultData = result.getOrElse(() => tSurahRes.toEntity());
      expect(resultData, tSurahRes.toEntity());
    });

    test(
        'should return ServerFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockSurahRemoteDataSource.getSurahs()).thenThrow(DioException(
        requestOptions: requestOptions,
        error: ServerException(),
      ));

      final result = await repository.getSurahs();

      expect(result, const Left(ServerFailure(message: 'Server Failure')));
      verify(mockSurahRemoteDataSource.getSurahs());
    });

    test(
        'should return RequestFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockSurahRemoteDataSource.getSurahs()).thenThrow(DioException(
        requestOptions: requestOptions,
        error: BadRequestException(),
      ));

      final result = await repository.getSurahs();

      expect(result, const Left(RequestFailure(message: 'Bad Request')));
      verify(mockSurahRemoteDataSource.getSurahs());
    });

    test(
        'should return NetworkFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockSurahRemoteDataSource.getSurahs()).thenThrow(DioException(
        requestOptions: requestOptions,
        error: NetworkException(),
      ));

      final result = await repository.getSurahs();

      expect(result,
          const Left(NetworkFailure(message: 'No Internet Connection')));
      verify(mockSurahRemoteDataSource.getSurahs());
    });

    test(
        'should return UnknownFailure when the call to remote data source is unsuccessful',
        () async {
      when(mockSurahRemoteDataSource.getSurahs()).thenThrow(DioException(
        requestOptions: requestOptions,
        error: UnknownException(),
      ));

      final result = await repository.getSurahs();

      expect(result, const Left(UnknownFailure(message: 'Unknown Error')));
      verify(mockSurahRemoteDataSource.getSurahs());
    });
  });
}
