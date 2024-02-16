import 'dart:convert';

import 'package:logging/logging.dart';

import '../../../../core/core.dart';
import '../data.dart';

abstract class RemoteDataSource {
  Future<SurahRes> getSurahs();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final DioClient dioClient;

  final Logger log = Logger("RemoteDataSourceImpl");
  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<SurahRes> getSurahs() async {
    final response = await dioClient.get(Endpoint.surah);

    /// If the response data is a string, it is decoded using JSON decoding.
    /// Otherwise, the response data is returned as is.
    final parsedData =
        response.data is String ? json.decode(response.data) : response.data;

    return SurahRes.fromJson(parsedData);
  }
}
