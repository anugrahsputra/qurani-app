import 'dart:math';

import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../models/models.dart';

abstract class AyahRemoteDatasource {
  Future<Either<Failure, AyahResModel>> getAyah(
    int surahNumber,
    int ayahNumber,
  );

  Future<Either<Failure, AyahResModel>> getRandomAyah();
}

class IAyahRemoteDatasource implements AyahRemoteDatasource {
  final DioClient dioClient;

  IAyahRemoteDatasource({required this.dioClient});

  @override
  Future<Either<Failure, AyahResModel>> getAyah(
    int surahNumber,
    int ayahNumber,
  ) async {
    return await dioClient.getParsedSafe(
      '${Endpoint.ayah}/$surahNumber/$ayahNumber',
      converter: (json) => AyahResModel.fromJson(json),
    );
  }

  @override
  Future<Either<Failure, AyahResModel>> getRandomAyah() async {
    final randomSurahIndex = Random().nextInt(surahsWithAyahs.length) + 1;
    final randomSurah = surahsWithAyahs[randomSurahIndex];
    final maxAyah = surahAyahCount[randomSurah];
    final randomAyah = Random().nextInt(maxAyah!) + 1;

    return await dioClient.getParsedSafe(
      '${Endpoint.ayah}/$randomSurah/$randomAyah',
      converter: (json) {
        final data = json is String ? Parser.getMap(json) : json;
        return AyahResModel.fromJson(data as Map<String, dynamic>);
      },
    );
  }
}
