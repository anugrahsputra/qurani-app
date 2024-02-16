import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class SurahRepositoryImpl implements BaseSurahRepository {
  final SurahRemoteDataSource remoteDataSource;

  SurahRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SurahResEntity>> getSurahs() async {
    try {
      final result = await remoteDataSource.getSurahs();
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: 'server failure'));
    } on BadRequestException {
      return const Left(RequestFailure(message: 'bad request'));
    } on NetworkException {
      return const Left(NetworkFailure(message: 'network failure'));
    } on UnknownException {
      return const Left(UnknownFailure(message: 'unknown failure'));
    }
  }
}
