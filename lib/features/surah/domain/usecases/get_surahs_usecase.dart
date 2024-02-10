import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetSurahsUseCase {
  final BaseSurahRepository repository;

  GetSurahsUseCase(this.repository);

  Future<Either<Failure, SurahResEntity>> call() async {
    return await repository.getSurahs();
  }
}
