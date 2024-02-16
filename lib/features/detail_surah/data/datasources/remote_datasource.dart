import '../../../../core/core.dart';
import '../models/models.dart';

abstract class DetailSurahRemoteDataSource {
  Future<SurahDetailResModel> getDetailSurah(int surahNumber);
}

class DetailSurahRemoteDataSourceImpl implements DetailSurahRemoteDataSource {
  final DioClient dioClient;

  DetailSurahRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<SurahDetailResModel> getDetailSurah(int surahNumber) async {
    final response = await dioClient.get('${Endpoint.surah}/$surahNumber');
    final parsedData =
        response.data is String ? Parser.getMap(response.data) : response.data;
    return SurahDetailResModel.fromJson(parsedData);
  }
}
