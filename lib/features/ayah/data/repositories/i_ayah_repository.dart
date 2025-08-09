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
    int surahNumber,
    int ayahNumber,
  ) async {
    final result = await remoteDatasource.getAyah(surahNumber, ayahNumber);
    return result.fold((l) => Left(l), (r) => Right(r.toEntity()));
  }

  @override
  Future<Either<Failure, AyahRes>> getRandomAyah() async {
    final result = await remoteDatasource.getRandomAyah();
    return result.fold((l) => Left(l), (r) => Right(r.toEntity()));
  }
}
