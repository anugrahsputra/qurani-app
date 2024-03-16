import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetRandomAyahUsecase {
  final AyahRepository repository;

  GetRandomAyahUsecase({required this.repository});

  Future<Either<Failure, AyahRes>> call() async {
    return await repository.getRandomAyah();
  }
}
