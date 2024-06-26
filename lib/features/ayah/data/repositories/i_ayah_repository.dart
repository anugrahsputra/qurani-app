import 'package:dartz/dartz.dart';
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
    } on ServerException {
      return const Left(ServerFailure(message: 'Server Failure'));
    } on NetworkException {
      return const Left(NetworkFailure(message: "No Internet Connection"));
    } on NotFoundException {
      return const Left(RequestFailure(message: "Not Found"));
    } on UnknownException {
      return const Left(UnknownFailure(message: "Unknown Error"));
    }
  }

  @override
  Future<Either<Failure, AyahRes>> getRandomAyah() async {
    try {
      final result = await remoteDatasource.getRandomAyah();
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(message: 'Server Failure'));
    } on NetworkException {
      return const Left(NetworkFailure(message: "No Internet Connection"));
    } on NotFoundException {
      return const Left(RequestFailure(message: "Not Found"));
    } on UnknownException {
      return const Left(UnknownFailure(message: "Unknown Error"));
    }
  }
}
