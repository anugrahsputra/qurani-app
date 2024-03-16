import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetAyahUsecase {
  final AyahRepository repository;

  GetAyahUsecase({required this.repository});

  Future<Either<Failure, AyahRes>> call(int surahNumber, int ayahNumber) async {
    return await repository.getAyah(surahNumber, ayahNumber);
  }
}
