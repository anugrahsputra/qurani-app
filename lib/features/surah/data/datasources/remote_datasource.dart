import 'package:logging/logging.dart';

import '../../../../core/core.dart';
import '../data.dart';

abstract class SurahRemoteDataSource {
  Future<SurahRes> getSurahs();
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  final DioClient dioClient;

  final Logger log = Logger("SurahRemoteDataSourceImpl");
  SurahRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<SurahRes> getSurahs() async {
    final response = await dioClient.get(Endpoint.surah);

    /// If the response data is a string, it is decoded using JSON decoding.
    /// Otherwise, the response data is returned as is.
    final parsedData =
        response.data is String ? Parser.getMap(response.data) : response.data;

    return SurahRes.fromJson(parsedData);
  }
}
