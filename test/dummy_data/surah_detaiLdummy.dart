import 'package:qurani/features/detail_surah/detail_surah.dart';

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
    verses: [
      VerseModel(
        number: NumberModel(
          inQuran: 1,
          inSurah: 1,
        ),
        meta: MetaModel(
          hizbQuarter: 1,
          sajda: SajdaModel(recommended: false, obligatory: false),
          juz: 1,
          ruku: 1,
          manzil: 1,
          page: 1,
        ),
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
        tafsir: VerseTafsirModel(
          id: IdModel(
            short: "",
            long: "",
          ),
        ),
      ),
    ],
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
    verses: [
      Verse(
        number: Number(
          inQuran: 1,
          inSurah: 1,
        ),
        meta: Meta(
          hizbQuarter: 1,
          sajda: Sajda(recommended: false, obligatory: false),
          juz: 1,
          ruku: 1,
          manzil: 1,
          page: 1,
        ),
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
        tafsir: VerseTafsir(
          id: Id(
            short: "",
            long: "",
          ),
        ),
      ),
    ],
  ),
);
