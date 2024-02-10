import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/surah/data/data.dart';

import '../../helper/mock.dart';

void main() {
  late RemoteDataSource remoteDataSource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    remoteDataSource = RemoteDataSourceImpl(dioClient: mockDioClient);
  });

  group('RemoteDataSource', () {
    test('getSurahs - should return a list of SurahRes model', () async {
      final mockResponse = Response(
        data: {'key': 'value'},
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );
      when(mockDioClient.get(any, options: anyNamed('options')))
          .thenAnswer((_) => Future.value(mockResponse));

      final result = await remoteDataSource.getSurahs();

      expect(result, isA<SurahRes>());
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });
  });
}
