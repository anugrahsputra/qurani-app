import 'dart:math';

import '../../../../core/core.dart';
import '../models/models.dart';

abstract class AyahRemoteDatasource {
  Future<AyahResModel> getAyah(int surahNumber, int ayahNumber);
  Future<AyahResModel> getRandomAyah();
}

class IAyahRemoteDatasource implements AyahRemoteDatasource {
  final DioClient dioClient;
  IAyahRemoteDatasource({required this.dioClient});

  @override
  Future<AyahResModel> getAyah(int surahNumber, int ayahNumber) async {
    final response = await dioClient.get(
      '${Endpoint.ayah}/$surahNumber/$ayahNumber',
    );

    final parsedData =
        response.data is String ? Parser.getMap(response.data) : response.data;
    return AyahResModel.fromJson(parsedData);
  }

  @override
  Future<AyahResModel> getRandomAyah() async {
    final randomSurahIndex = Random().nextInt(surahsWithAyahs.length) + 1;
    final randomSurah = surahsWithAyahs[randomSurahIndex];

    final maxAyah = surahAyahCount[randomSurah];

    final randomAyah = Random().nextInt(maxAyah!) + 1;

    final response = await dioClient.get(
      '${Endpoint.ayah}/$randomSurah/$randomAyah',
    );
    final parsedData =
        response.data is String ? Parser.getMap(response.data) : response.data;

    return AyahResModel.fromJson(parsedData);
  }
}
