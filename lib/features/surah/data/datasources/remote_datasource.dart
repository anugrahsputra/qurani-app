/* 
  Developer: Anugrah Surya Putra
  CopyRight: 2024
*/

import 'package:dartz/dartz.dart';
import 'package:logging/logging.dart';

import '../../../../core/core.dart';
import '../data.dart';

abstract class SurahRemoteDataSource {
  Future<Either<Failure, SurahRes>> getSurahs();
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  final DioClient dioClient;

  final Logger log = Logger("SurahRemoteDataSourceImpl");

  SurahRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<Either<Failure, SurahRes>> getSurahs() async {
    return await dioClient.getParsedSafe(
      Endpoint.surah,
      converter: (json) => SurahRes.fromJson(json),
      useIsolate: false,
    );
  }
}
