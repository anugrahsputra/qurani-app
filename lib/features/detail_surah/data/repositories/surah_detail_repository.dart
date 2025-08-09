import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class ISurahDetailRepository implements SurahDetailRepository {
  final DetailSurahRemoteDataSource remoteDataSource;

  ISurahDetailRepository({required this.remoteDataSource});

  @override
  Future<Either<Failure, SurahDetailRes>> getDetailSurah(
    int surahNumber,
  ) async {
    final result = await remoteDataSource.getDetailSurah(surahNumber);
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data.toEntity()),
    );
  }

  @override
  Future<Either<Failure, AudioFile>> getFullAudio(int surahNumber) async {
    final result = await remoteDataSource.getFullAudio(surahNumber);
    return result.fold(
      (failure) => Left(failure),
      (data) => Right(data.toEntity()),
    );
  }
}
