import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

abstract class SurahDetailRepository {
  Future<Either<Failure, SurahDetailRes>> getDetailSurah(int surahNumber);
}
