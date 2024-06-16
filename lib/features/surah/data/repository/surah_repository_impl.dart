import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
    } on DioException catch (e) {
      if (e.error is BadRequestException) {
        return const Left(RequestFailure(message: "Bad Request"));
      } else if (e.error is UnauthorizedException) {
        return const Left(RequestFailure(message: "Unauthorized"));
      } else if (e.error is ForbiddenException) {
        return const Left(RequestFailure(message: "Forbidden"));
      } else if (e.error is ServerException) {
        return const Left(ServerFailure(message: "Server Failure"));
      } else if (e.error is NotFoundException) {
        return const Left(RequestFailure(message: "Not Found"));
      } else if (e.error is NetworkException) {
        return const Left(NetworkFailure(message: "No Internet Connection"));
      } else {
        return const Left(UnknownFailure(message: "Unknown Error"));
      }
    } catch (e) {
      return const Left(UnknownFailure(message: "Unknown Error"));
    }
  }
}
