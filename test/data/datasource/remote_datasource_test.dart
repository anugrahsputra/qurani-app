import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';

import '../../helper/mock.dart';

void main() {
  late SurahRemoteDataSource remoteDataSource;
  late DetailSurahRemoteDataSource detailSurahRemoteDataSource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    remoteDataSource = SurahRemoteDataSourceImpl(dioClient: mockDioClient);
    detailSurahRemoteDataSource =
        DetailSurahRemoteDataSourceImpl(dioClient: mockDioClient);
  });

  group('SurahRemoteDataSource', () {
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

  group('DetailSurahRemoteDataSource', () {
    test('getDetailSurah - should return surah detail of SurahDetailRes model',
        () async {
      final mockResponse = Response(
        data: {
          "code": 0,
          "status": "",
          "message": "",
          "data": {
            "number": 1,
            "name": {
              "short": "",
              "long": "",
              "transliteration": {"en": "", "id": ""},
              "translation": {"en": "", "id": ""}
            },
            "revelation": {"en": "", "id": ""},
            "tafsir": {"id": ""},
            "preBismillah": {
              "text": {
                "transliteration": {"en": ""}
              },
              "translation": {"en": "", "id": ""},
              "audio": {"primary": "", "secondary": []}
            },
            "verses": []
          },
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );

      when(mockDioClient.get(any, options: anyNamed('options')))
          .thenAnswer((_) => Future.value(mockResponse));

      final result = await detailSurahRemoteDataSource.getDetailSurah(1);

      expect(result, isA<SurahDetailResModel>());
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });
  });
}
