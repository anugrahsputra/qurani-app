import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../models/models.dart';

abstract class DetailSurahRemoteDataSource {
  Future<Either<Failure, SurahDetailResModel>> getDetailSurah(int surahNumber);
  Future<Either<Failure, AudioFileModel>> getFullAudio(int surahNumber);
}

class DetailSurahRemoteDataSourceImpl implements DetailSurahRemoteDataSource {
  final DioClient dioClient;

  DetailSurahRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<Failure, SurahDetailResModel>> getDetailSurah(
    int surahNumber,
  ) async {
    return await dioClient.getParsedSafe(
      '${Endpoint.surah}/$surahNumber',
      converter: (json) => SurahDetailResModel.fromJson(json),
    );
  }

  @override
  Future<Either<Failure, AudioFileModel>> getFullAudio(int surahNumber) async {
    return await dioClient.getParsedSafe(
      '${Endpoint.recitalSurah}$surahNumber',
      converter: (json) {
        final data = json['audio_file'];
        return AudioFileModel.fromJson(data);
      },
      useIsolate: true,
    );
  }
}
