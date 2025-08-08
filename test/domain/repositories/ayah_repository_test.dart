import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/ayah/data/models/to_entity/model_to_entity.dart';

import '../../dummy_data/ayah_dummy.dart';
import '../../helper/mock.mocks.dart';

void main() {
  late AyahRepository ayahRepository;
  late MockAyahRemoteDatasource mockAyahRemoteDatasource;

  setUp(() {
    mockAyahRemoteDatasource = MockAyahRemoteDatasource();
    ayahRepository = IAyahRepository(
      remoteDatasource: mockAyahRemoteDatasource,
    );
  });

  group('get ayah', () {
    test('should get ayah from repository', () async {
      when(
        mockAyahRemoteDatasource.getAyah(any, any),
      ).thenAnswer((_) async => Right(tAyahResModel));

      final result = await ayahRepository.getAyah(1, 1);

      verify(mockAyahRemoteDatasource.getAyah(1, 1));
      expect(result, Right(tAyahResModel.toEntity()));
    });

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getAyah(any, any)).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'Server Failure')),
        );

        final result = await ayahRepository.getAyah(1, 1);

        expect(result, const Left(ServerFailure(message: 'Server Failure')));
      },
    );

    test(
      'should return NetworkFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getAyah(any, any)).thenAnswer(
          (_) async =>
              const Left(NetworkFailure(message: 'No Internet Connection')),
        );

        final result = await ayahRepository.getAyah(1, 1);

        expect(
          result,
          const Left(NetworkFailure(message: 'No Internet Connection')),
        );
      },
    );
    test(
      'should return NotFoundFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getAyah(any, any)).thenAnswer(
          (_) async => const Left(RequestFailure(message: 'Not Found')),
        );

        final result = await ayahRepository.getAyah(1, 1);

        expect(result, const Left(RequestFailure(message: 'Not Found')));
      },
    );
    test(
      'should return UnknownFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getAyah(any, any)).thenAnswer(
          (_) async => const Left(UnknownFailure(message: 'Unknown Error')),
        );

        final result = await ayahRepository.getAyah(1, 1);

        expect(result, const Left(UnknownFailure(message: 'Unknown Error')));
      },
    );
  });
  group('get random ayah', () {
    test('should get random ayah from repository', () async {
      when(
        mockAyahRemoteDatasource.getRandomAyah(),
      ).thenAnswer((_) async => Right(tAyahResModel));

      final result = await ayahRepository.getRandomAyah();

      verify(mockAyahRemoteDatasource.getRandomAyah());
      expect(result, Right(tAyahResModel.toEntity()));
    });

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getRandomAyah()).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'Server Failure')),
        );

        final result = await ayahRepository.getRandomAyah();

        expect(result, const Left(ServerFailure(message: 'Server Failure')));
      },
    );
    test(
      'should return NetworkFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getRandomAyah()).thenAnswer(
          (_) async =>
              const Left(NetworkFailure(message: 'No Internet Connection')),
        );

        final result = await ayahRepository.getRandomAyah();

        expect(
          result,
          const Left(NetworkFailure(message: 'No Internet Connection')),
        );
      },
    );
    test(
      'should return NotFoundFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getRandomAyah()).thenAnswer(
          (_) async => const Left(RequestFailure(message: 'Not Found')),
        );

        final result = await ayahRepository.getRandomAyah();

        expect(result, const Left(RequestFailure(message: 'Not Found')));
      },
    );
    test(
      'should return UnknownFailure when the call to remote data source is unsuccessful',
      () async {
        when(mockAyahRemoteDatasource.getRandomAyah()).thenAnswer(
          (_) async => const Left(UnknownFailure(message: 'Unknown Error')),
        );

        final result = await ayahRepository.getRandomAyah();

        expect(result, const Left(UnknownFailure(message: 'Unknown Error')));
      },
    );
  });
}
