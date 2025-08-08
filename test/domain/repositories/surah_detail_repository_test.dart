import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

import '../../dummy_data/audio_file_dummy.dart';
import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/mock.dart';

void main() {
  late SurahDetailRepository surahDetailRepository;
  late MockDetailSurahRemoteDataSource detailSurahRemoteDataSource;

  setUp(() {
    detailSurahRemoteDataSource = MockDetailSurahRemoteDataSource();
    surahDetailRepository = ISurahDetailRepository(
      remoteDataSource: detailSurahRemoteDataSource,
    );
  });

  group('getDetailSurah', () {
    test(
      'should return SurahDetailResEntity when the call to remote data source is successful',
      () async {
        when(
          detailSurahRemoteDataSource.getDetailSurah(any),
        ).thenAnswer((_) async => Right(tSurahDetailResModel));

        final result = await surahDetailRepository.getDetailSurah(1);

        verify(detailSurahRemoteDataSource.getDetailSurah(1));
        final resultData = result.getOrElse(
          () => tSurahDetailResModel.toEntity(),
        );
        expect(resultData, tSurahDetailResModel.toEntity());
      },
    );

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getDetailSurah(any)).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'server failure')),
        );

        final result = await surahDetailRepository.getDetailSurah(1);

        expect(result, const Left(ServerFailure(message: 'server failure')));
        verify(detailSurahRemoteDataSource.getDetailSurah(1));
      },
    );

    test(
      'should return NetworkFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getDetailSurah(any)).thenAnswer(
          (_) async =>
              const Left(NetworkFailure(message: 'No Internet Connection')),
        );

        final result = await surahDetailRepository.getDetailSurah(1);

        expect(
          result,
          const Left(NetworkFailure(message: 'No Internet Connection')),
        );
        verify(detailSurahRemoteDataSource.getDetailSurah(1));
      },
    );

    test(
      'should return RequestFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getDetailSurah(any)).thenAnswer(
          (_) async => const Left(RequestFailure(message: 'Not Found')),
        );

        final result = await surahDetailRepository.getDetailSurah(1);

        expect(result, const Left(RequestFailure(message: 'Not Found')));
        verify(detailSurahRemoteDataSource.getDetailSurah(1));
      },
    );

    test(
      'should return UnknownFailure when the call to remote data source is unsuccessfull',
      () async {
        when(detailSurahRemoteDataSource.getDetailSurah(any)).thenAnswer(
          (_) async => const Left(UnknownFailure(message: 'Unknown Error')),
        );

        final result = await surahDetailRepository.getDetailSurah(1);

        expect(result, const Left(UnknownFailure(message: 'Unknown Error')));
        verify(detailSurahRemoteDataSource.getDetailSurah(1));
      },
    );
  });

  group('getFullAudio', () {
    test(
      'should return SurahAudioResEntity when the call to remote data source is successful',
      () async {
        when(
          detailSurahRemoteDataSource.getFullAudio(any),
        ).thenAnswer((_) async => Right(tAudioFileModel));

        final result = await surahDetailRepository.getFullAudio(1);

        verify(detailSurahRemoteDataSource.getFullAudio(1));
        final resultData = result.getOrElse(() => tAudioFileModel.toEntity());
        expect(resultData, tAudioFileModel.toEntity());
      },
    );

    test(
      'should return ServerFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getFullAudio(any)).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'server failure')),
        );

        final result = await surahDetailRepository.getFullAudio(1);

        expect(result, const Left(ServerFailure(message: 'server failure')));
        verify(detailSurahRemoteDataSource.getFullAudio(1));
      },
    );

    test(
      'should return NetworkFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getFullAudio(any)).thenAnswer(
          (_) async =>
              const Left(NetworkFailure(message: 'No Internet Connection')),
        );

        final result = await surahDetailRepository.getFullAudio(1);

        expect(
          result,
          const Left(NetworkFailure(message: 'No Internet Connection')),
        );
        verify(detailSurahRemoteDataSource.getFullAudio(1));
      },
    );

    test(
      'should return RequestFailure when the call to remote data source is unsuccessful',
      () async {
        when(detailSurahRemoteDataSource.getFullAudio(any)).thenAnswer(
          (_) async => const Left(RequestFailure(message: 'Not Found')),
        );

        final result = await surahDetailRepository.getFullAudio(1);

        expect(result, const Left(RequestFailure(message: 'Not Found')));
        verify(detailSurahRemoteDataSource.getFullAudio(1));
      },
    );

    test(
      'should return UnknownFailure when the call to remote data source is unsuccessfull',
      () async {
        when(detailSurahRemoteDataSource.getFullAudio(any)).thenAnswer(
          (_) async => const Left(UnknownFailure(message: 'Unknown Error')),
        );

        final result = await surahDetailRepository.getFullAudio(1);

        expect(result, const Left(UnknownFailure(message: 'Unknown Error')));
        verify(detailSurahRemoteDataSource.getFullAudio(1));
      },
    );
  });
}
