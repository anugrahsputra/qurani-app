import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetSurahDetailUseCase {
  final SurahDetailRepository repository;

  GetSurahDetailUseCase({required this.repository});

  Future<Either<Failure, SurahDetailRes>> execute(int surahNumber) async {
    return await repository.getDetailSurah(surahNumber);
  }
}