import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

abstract class AyahRepository {
  Future<Either<Failure, AyahRes>> getAyah(int surahNumber, int ayahNumber);
  Future<Either<Failure, AyahRes>> getRandomAyah();
}
