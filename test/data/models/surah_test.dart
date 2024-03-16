import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/surah/data/data.dart';
import 'package:qurani/features/surah/domain/domain.dart';

void main() {
  const tSurah = Surah(
    number: 1,
    sequence: 1,
    numberOfVerses: 1,
    name: Name(
      short: "",
      long: "",
      transliteration: Translation(en: "", id: ""),
      translation: Translation(en: "", id: ""),
    ),
    revelation: Revelation(arab: "", en: "", id: ""),
    tafsir: Tafsir(id: ""),
  );

  const tName = Name(
    short: "",
    long: "",
    transliteration: Translation(en: "", id: ""),
    translation: Translation(en: "", id: ""),
  );
  const tTranslation = Translation(en: "", id: "");
  const tRevelation = Revelation(arab: "", en: "", id: "");
  const tTafsir = Tafsir(id: "");

  const tSurahEntity = SurahEntity(
    number: 1,
    sequence: 1,
    numberOfVerses: 1,
    name: NameEntity(
      short: "",
      long: "",
      transliteration: TranslationEntity(en: "", id: ""),
      translation: TranslationEntity(en: "", id: ""),
    ),
    revelation: RevelationEntity(arab: "", en: "", id: ""),
    tafsir: TafsirEntity(id: ""),
  );

  const tNameEntity = NameEntity(
    short: "",
    long: "",
    transliteration: TranslationEntity(en: "", id: ""),
    translation: TranslationEntity(en: "", id: ""),
  );

  const tTranslationEntity = TranslationEntity(en: "", id: "");

  const tRevelationEntity = RevelationEntity(arab: "", en: "", id: "");

  const tTafsirEntity = TafsirEntity(id: "");

  group('model test ', () {
    group('surah model test', () {
      test('should be a subclass of SurahEntity', () async {
        final result = tSurah.toEntity();
        expect(result, tSurahEntity);
      });

      test('should return a valid model', () async {
        final Map<String, dynamic> jsonMap = {
          "number": 1,
          "sequence": 1,
          "numberOfVerses": 1,
          "name": {
            "short": "",
            "long": "",
            "transliteration": {"en": "", "id": ""},
            "translation": {"en": "", "id": ""}
          },
          "revelation": {"arab": "", "en": "", "id": ""},
          "tafsir": {"id": ""}
        };

        final result = Surah.fromJson(jsonMap);
        expect(result, tSurah);
      });

      test('should return a valid json', () async {
        final result = tSurah.toJson();
        expect(result, {
          "number": 1,
          "sequence": 1,
          "numberOfVerses": 1,
          "name": {
            "short": "",
            "long": "",
            "transliteration": {"en": "", "id": ""},
            "translation": {"en": "", "id": ""}
          },
          "revelation": {"arab": "", "en": "", "id": ""},
          "tafsir": {"id": ""}
        });
      });
    });

    group('Name model', () {
      test('should be a subclass of NameEntity', () async {
        final result = tName.toEntity();
        expect(result, tNameEntity);
      });

      test('should return a valid model', () async {
        final Map<String, dynamic> jsonMap = {
          "short": "",
          "long": "",
          "transliteration": {"en": "", "id": ""},
          "translation": {"en": "", "id": ""}
        };

        final result = Name.fromJson(jsonMap);
        expect(result, tName);
      });

      test('should return a valid json', () async {
        final result = tName.toJson();
        expect(result, {
          "short": "",
          "long": "",
          "transliteration": {"en": "", "id": ""},
          "translation": {"en": "", "id": ""}
        });
      });
    });

    group('translation model', () {
      test('should be a subclass of TranslationEntity', () async {
        final result = tTranslation.toEntity();
        expect(result, tTranslationEntity);
      });

      test('should return a valid model', () async {
        final Map<String, dynamic> jsonMap = {
          "en": "",
          "id": "",
        };

        final result = Translation.fromJson(jsonMap);
        expect(result, tTranslation);
      });

      test('should return a valid json', () async {
        final result = tTranslation.toJson();
        expect(result, {
          "en": "",
          "id": "",
        });
      });
    });

    group('revelation model', () {
      test('should be a subclass of RevelationEntity', () async {
        final result = tRevelation.toEntity();
        expect(result, tRevelationEntity);
      });

      test('should return a valid model', () async {
        final Map<String, dynamic> jsonMap = {
          "arab": "",
          "en": "",
          "id": "",
        };

        final result = Revelation.fromJson(jsonMap);
        expect(result, tRevelation);
      });

      test('should return a valid json', () async {
        final result = tRevelation.toJson();
        expect(result, {
          "arab": "",
          "en": "",
          "id": "",
        });
      });
    });

    group('tafsir model', () {
      test('should be a subclass of TafsirEntity', () async {
        final result = tTafsir.toEntity();
        expect(result, tTafsirEntity);
      });

      test('should return a valid model', () async {
        final Map<String, dynamic> jsonMap = {
          "id": "",
        };

        final result = Tafsir.fromJson(jsonMap);
        expect(result, tTafsir);
      });

      test('should return a valid json', () async {
        final result = tTafsir.toJson();
        expect(result, {
          "id": "",
        });
      });
    });
  });
}
