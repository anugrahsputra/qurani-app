import '../../../../core/core.dart';
import '../data.dart';

abstract class RemoteDataSource {
  Future<SurahRes> getSurahs();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final DioClient dioClient;

  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<SurahRes> getSurahs() async {
    final response = await dioClient.get(Endpoint.surah);
    return SurahRes.fromJson(response.data);
  }
}
