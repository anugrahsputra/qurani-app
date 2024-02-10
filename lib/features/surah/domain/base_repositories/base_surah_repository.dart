import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

abstract class BaseSurahRepository {
  Future<Either<Failure, SurahResEntity>> getSurahs();
}
