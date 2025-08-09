import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/ayah/data/models/to_entity/model_to_entity.dart';

import '../../dummy_data/ayah_dummy.dart';

void main() {
  group('ayah model', () {
    test('should be a subclass of Ayah entity', () {
      final result = tAyahResModel.toEntity();
      expect(result, tAyahRes);
    });
    test('should return a valid model when the JSON is valid', () {
      final Map<String, dynamic> jsonMap = {
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
            "revelation": {"arab": "arab", "en": "en", "id": "id"},
            "tafsir": {"id": "id"},
            "preBismillah": {
              "text": {
                "arab": "arab",
                "transliteration": {"en": "en"},
              },
              "translation": {"en": "en", "id": "id"},
              "audio": {
                "primary": "primary",
                "secondary": ["secondary", "secondary"],
              },
            },
          },
        },
      };

      final result = AyahResModel.fromJson(jsonMap);

      expect(result, tAyahResModel);
    });

    test('should return a JSON map containing the proper data', () {
      final result = tAyahResModel.toJson();

      final expectedJsonMap = {
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
            "revelation": {"arab": "arab", "en": "en", "id": "id"},
            "tafsir": {"id": "id"},
            "preBismillah": {
              "text": {
                "arab": "arab",
                "transliteration": {"en": "en"},
              },
              "translation": {"en": "en", "id": "id"},
              "audio": {
                "primary": "primary",
                "secondary": ["secondary", "secondary"],
              },
            },
          },
        },
      };

      expect(result, expectedJsonMap);
    });
  });
}
