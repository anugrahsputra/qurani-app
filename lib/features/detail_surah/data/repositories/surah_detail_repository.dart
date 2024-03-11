import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class ISurahDetailRepository implements SurahDetailRepository {
  final DetailSurahRemoteDataSource remoteDataSource;

  ISurahDetailRepository({required this.remoteDataSource});

  @override
  Future<Either<Failure, SurahDetailRes>> getDetailSurah(
      int surahNumber) async {
    try {
      final result = await remoteDataSource.getDetailSurah(surahNumber);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: "server failure"));
    } on NetworkException {
      return const Left(NetworkFailure(message: "No Internet Connection"));
    } on NotFoundException {
      return const Left(RequestFailure(message: "Not Found"));
    } on UnknownException {
      return const Left(UnknownFailure(message: "Unknown Error"));
    }
  }

  @override
  Future<Either<Failure, AudioFile>> getFullAudio(int surahNumber) async {
    try {
      final result = await remoteDataSource.getFullAudio(surahNumber);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: "server failure"));
    } on NetworkException {
      return const Left(NetworkFailure(message: "No Internet Connection"));
    } on NotFoundException {
      return const Left(RequestFailure(message: "Not Found"));
    } on UnknownException {
      return const Left(UnknownFailure(message: "Unknown Error"));
    }
  }
}
