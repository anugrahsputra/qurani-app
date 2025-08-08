import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';

import '../../helper/mock.dart';

void main() {
  late SurahRemoteDataSource remoteDataSource;
  late DetailSurahRemoteDataSource detailSurahRemoteDataSource;
  late AyahRemoteDatasource ayahRemoteDatasource;
  late MockDioClient mockDioClient;

  setUp(() {
    mockDioClient = MockDioClient();
    remoteDataSource = SurahRemoteDataSourceImpl(dioClient: mockDioClient);
    detailSurahRemoteDataSource = DetailSurahRemoteDataSourceImpl(
      dioClient: mockDioClient,
    );
    ayahRemoteDatasource = IAyahRemoteDatasource(dioClient: mockDioClient);
  });

  group('SurahRemoteDataSource', () {
    test('getSurahs - should return a list of SurahRes model', () async {
      final mockResponse = Response(
        data: {'key': 'value'},
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );
      when(
        mockDioClient.get(any, options: anyNamed('options')),
      ).thenAnswer((_) => Future.value(mockResponse));

      final result = await remoteDataSource.getSurahs();

      result.fold(
        (l) => fail('Expected Right, got Left: $l'),
        (r) => expect(r, isA<SurahRes>()),
      );
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });
  });

  group('DetailSurahRemoteDataSource', () {
    test(
      'getDetailSurah - should return surah detail of SurahDetailRes model',
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
                "translation": {"en": "", "id": ""},
              },
              "revelation": {"en": "", "id": ""},
              "tafsir": {"id": ""},
              "preBismillah": {
                "text": {
                  "transliteration": {"en": ""},
                },
                "translation": {"en": "", "id": ""},
                "audio": {"primary": "", "secondary": []},
              },
              "verses": [],
            },
          },
          statusCode: 200,
          requestOptions: RequestOptions(path: ''),
        );

        when(
          mockDioClient.get(any, options: anyNamed('options')),
        ).thenAnswer((_) => Future.value(mockResponse));

        final result = await detailSurahRemoteDataSource.getDetailSurah(1);

        result.fold(
          (l) => fail('Expected Right, got Left: $l'),
          (r) => expect(r, isA<SurahDetailResModel>()),
        );
        verify(mockDioClient.get(any, options: anyNamed('options')));
      },
    );

    test('surah audio - get full recitation', () async {
      final mockResponse = Response(
        data: {
          "audio_file": {
            "id": 1,
            "chapter_id": 1,
            "file_size": 1,
            "format": "format",
            "audio_url": "audioUrl",
          },
        },
        requestOptions: RequestOptions(path: ''),
        statusCode: 200,
      );

      when(
        mockDioClient.get(any, options: anyNamed('options')),
      ).thenAnswer((_) => Future.value(mockResponse));

      final result = await detailSurahRemoteDataSource.getFullAudio(1);

      result.fold(
        (l) => fail('Expected Right, got Left: $l'),
        (r) => expect(r, isA<AudioFileModel>()),
      );
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });
  });

  group('ayahRemoteDatasource', () {
    test('getAyah - should get ayah', () async {
      final mockReponse = Response(
        data: {
          "code": 0,
          "status": "status",
          "message": "message",
          "data": {
            "number": {"inQuran": 1, "inSurah": 1},
            "meta": {
              "juz": 1,
              "page": 1,
              "manzil": 1,
              "ruku": 1,
              "hizbQuarter": 1,
              "sajda": {"recommended": false, "obligatory": false},
            },
            "text": {
              "arab": "arab",
              "transliteration": {"en": "en"},
            },
            "translation": {"en": "en", "id": "id"},
            "audio": {
              "primary": "primary",
              "secondary": ["secondary", "secondary"],
            },
            "tafsir": {
              "id": {"short": "short", "long": "long"},
            },
            "surah": {
              "number": 1,
              "sequence": 1,
              "numberOfVerses": 1,
              "name": {
                "short": "short",
                "long": "long",
                "transliteration": {"en": "en", "id": "id"},
                "translation": {"en": "en", "id": "id"},
              },
              "revelation": {"arab": "arab", "en": "end", "id": "id"},
              "tafsir": {"id": "id"},
              "preBismillah": {
                "text": {
                  "arab": "arab",
                  "transliteration": {"en": "en"},
                },
                "translation": {"en": "en", "id": "id"},
                "audio": {
                  "primary": "prmary",
                  "secondary": ["secondary", "secondary"],
                },
              },
            },
          },
        },
        requestOptions: RequestOptions(path: ''),
        statusCode: 200,
      );

      when(
        mockDioClient.get(any, options: anyNamed('options')),
      ).thenAnswer((_) => Future.value(mockReponse));

      final result = await ayahRemoteDatasource.getAyah(1, 1);

      result.fold(
        (l) => fail('Expected Right, got Left: $l'),
        (r) => expect(r, isA<AyahResModel>()),
      );
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });

    test('getRandomAyah - should get random ayah', () async {
      final mockReponse = Response(
        data: {
          "code": 0,
          "status": "status",
          "message": "message",
          "data": {
            "number": {"inQuran": 1, "inSurah": 1},
            "meta": {
              "juz": 1,
              "page": 1,
              "manzil": 1,
              "ruku": 1,
              "hizbQuarter": 1,
              "sajda": {"recommended": false, "obligatory": false},
            },
            "text": {
              "arab": "arab",
              "transliteration": {"en": "en"},
            },
            "translation": {"en": "en", "id": "id"},
            "audio": {
              "primary": "primary",
              "secondary": ["secondary", "secondary"],
            },
            "tafsir": {
              "id": {"short": "short", "long": "long"},
            },
            "surah": {
              "number": 1,
              "sequence": 1,
              "numberOfVerses": 1,
              "name": {
                "short": "short",
                "long": "long",
                "transliteration": {"en": "en", "id": "id"},
                "translation": {"en": "en", "id": "id"},
              },
              "revelation": {"arab": "arab", "en": "end", "id": "id"},
              "tafsir": {"id": "id"},
              "preBismillah": {
                "text": {
                  "arab": "arab",
                  "transliteration": {"en": "en"},
                },
                "translation": {"en": "en", "id": "id"},
                "audio": {
                  "primary": "prmary",
                  "secondary": ["secondary", "secondary"],
                },
              },
            },
          },
        },
        requestOptions: RequestOptions(path: ''),
        statusCode: 200,
      );

      when(
        mockDioClient.get(any, options: anyNamed('options')),
      ).thenAnswer((_) => Future.value(mockReponse));

      final result = await ayahRemoteDatasource.getRandomAyah();

      result.fold(
        (l) => fail('Expected Right, got Left: $l'),
        (r) => expect(r, isA<AyahResModel>()),
      );
      verify(mockDioClient.get(any, options: anyNamed('options')));
    });
  });
}
