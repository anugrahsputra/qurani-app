import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class SurahRepositoryImpl implements BaseSurahRepository {
  final SurahRemoteDataSource remoteDataSource;

  SurahRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SurahResEntity>> getSurahs() async {
    final result = await remoteDataSource.getSurahs();
    return result.fold((l) => Left(l), (r) => Right(r.toEntity()));
  }
}
