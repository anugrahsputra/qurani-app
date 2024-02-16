import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

void main() {
  const tSurahDetailResModel = SurahDetailResModel(
    code: 0,
    status: "",
    message: "",
    data: SurahDetailModel(
      number: 1,
      sequence: 1,
      numberOfVerses: 1,
      name: NameModel(
        short: "",
        long: "",
        transliteration: TranslationModel(
          en: "",
          id: "",
        ),
        translation: TranslationModel(
          en: "",
          id: "",
        ),
      ),
      revelation: RevelationModel(
        arab: "",
        en: "",
        id: "",
      ),
      tafsir: TafsirModel(
        id: "",
      ),
      preBismillah: PreBismillahModel(
        text: TextsModel(
          arab: "",
          transliteration: TransliterationModel(
            en: "",
          ),
        ),
        translation: TranslationModel(
          en: "",
          id: "",
        ),
        audio: AudioModel(
          primary: "",
          secondary: [],
        ),
      ),
      verses: [],
    ),
  );
  const tSurahDetailRes = SurahDetailRes(
    code: 0,
    status: "",
    message: "",
    data: SurahDetail(
      number: 1,
      sequence: 1,
      numberOfVerses: 1,
      name: Name(
        short: "",
        long: "",
        transliteration: Translation(
          en: "",
          id: "",
        ),
        translation: Translation(
          en: "",
          id: "",
        ),
      ),
      revelation: Revelation(
        arab: "",
        en: "",
        id: "",
      ),
      tafsir: Tafsir(
        id: "",
      ),
      preBismillah: PreBismillah(
        text: Texts(
          arab: "",
          transliteration: Transliteration(
            en: "",
          ),
        ),
        translation: Translation(
          en: "",
          id: "",
        ),
        audio: Audio(
          primary: "",
          secondary: [],
        ),
      ),
      verses: [],
    ),
  );

  group('surah detail res model test', () {
    test('should be a subclass of SurahDetailRes', () async {
      final result = tSurahDetailResModel.toEntity();
      expect(result, tSurahDetailRes);
    });

    test('should return a valid model', () {
      final Map<String, dynamic> jsonMap = {
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
      };

      final result = SurahDetailResModel.fromJson(jsonMap);
      expect(result, tSurahDetailResModel);
    });

    test('should return a valid json', () {
      final result = tSurahDetailResModel.toJson();
      final expectedJson = {
        'code': 0,
        'status': '',
        'message': '',
        'data': {
          'number': 1,
          'sequence': 1,
          'numberOfVerses': 1,
          'name': {
            'short': '',
            'long': '',
            'transliteration': {'en': '', 'id': ''},
            'translation': {'en': '', 'id': ''}
          },
          'revelation': {'arab': '', 'en': '', 'id': ''},
          'tafsir': {'id': ''},
          'preBismillah': {
            'text': {
              'arab': '',
              'transliteration': {'en': ''}
            },
            'translation': {'en': '', 'id': ''},
            'audio': {'primary': '', 'secondary': []}
          },
          'verses': []
        }
      };
      expect(result, expectedJson);
    });
  });
}
