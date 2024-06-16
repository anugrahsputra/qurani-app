import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:qurani/features/ayah/data/models/to_entity/model_to_entity.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class IAyahRepository implements AyahRepository {
  final AyahRemoteDatasource remoteDatasource;

  IAyahRepository({required this.remoteDatasource});

  @override
  Future<Either<Failure, AyahRes>> getAyah(
      int surahNumber, int ayahNumber) async {
    try {
      final result = await remoteDatasource.getAyah(surahNumber, ayahNumber);
      return Right(result.toEntity());
    } on DioException catch (e) {
      if (e.error is BadRequestException) {
        return const Left(RequestFailure(message: "Bad Request"));
      } else if (e.error is UnauthorizedException) {
        return const Left(RequestFailure(message: "Unauthorized"));
      } else if (e.error is ForbiddenException) {
        return const Left(RequestFailure(message: "Forbidden"));
      } else if (e.error is NotFoundException) {
        return const Left(RequestFailure(message: "Not Found"));
      } else if (e.error is ServerException) {
        return const Left(ServerFailure(message: "Server Failure"));
      } else if (e.error is NetworkException) {
        return const Left(NetworkFailure(message: "No Internet Connection"));
      } else {
        return const Left(UnknownFailure(message: "Unknown Error"));
      }
    }
  }

  @override
  Future<Either<Failure, AyahRes>> getRandomAyah() async {
    try {
      final result = await remoteDatasource.getRandomAyah();
      return Right(result.toEntity());
    } on DioException catch (e) {
      if (e.error is BadRequestException) {
        return const Left(RequestFailure(message: "Bad Request"));
      } else if (e.error is UnauthorizedException) {
        return const Left(RequestFailure(message: "Unauthorized"));
      } else if (e.error is ForbiddenException) {
        return const Left(RequestFailure(message: "Forbidden"));
      } else if (e.error is NotFoundException) {
        return const Left(RequestFailure(message: "Not Found"));
      } else if (e.error is ServerException) {
        return const Left(ServerFailure(message: "Server Failure"));
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
