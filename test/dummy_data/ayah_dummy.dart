import 'package:qurani/features/ayah/ayah.dart';

const tNumberAyahModel = NumberAyahModel(inQuran: 1, inSurah: 1);

const tMetaAyahModel = MetaAyahModel(
  juz: 1,
  page: 1,
  manzil: 1,
  ruku: 1,
  hizbQuarter: 1,
  sajda: SajdaAyahModel(recommended: false, obligatory: false),
);

const transliteration = TransliterationAyahModel(en: "en");

const translation = TranslationAyahModel(en: "en", id: "id");

const audio = AudioAyahModel(
  primary: "primary",
  secondary: [
    "secondary",
    "secondary",
  ],
);

const tafsir = TafsirAyahModel(id: IdAyahModel(short: "short", long: "long"));

const tTafsirAyahModel = SurahTafsirAyahModel(id: "id");

const text = TextsAyahModel(
  arab: "arab",
  transliteration: transliteration,
);

const surah = SurahAyahModel(
  number: 1,
  name: NameAyahModel(
    short: "short",
    long: "long",
    transliteration: translation,
    translation: translation,
  ),
  sequence: 1,
  numberOfVerses: 1,
  revelation: RevelationAyahModel(arab: "arab", en: "en", id: "id"),
  tafsir: tTafsirAyahModel,
  preBismillah: PreBismillahAyahModel(
    text: text,
    translation: translation,
    audio: audio,
  ),
);

const tAyahModel = AyahModel(
  number: tNumberAyahModel,
  meta: tMetaAyahModel,
  text: text,
  translation: translation,
  audio: audio,
  tafsir: tafsir,
  surah: surah,
);

const tAyahResModel = AyahResModel(
  code: 0,
  status: "status",
  message: "message",
  data: tAyahModel,
);

const tNumberAyah = NumberAyah(inQuran: 1, inSurah: 1);

const tMetaAyah = MetaAyah(
  juz: 1,
  page: 1,
  manzil: 1,
  ruku: 1,
  hizbQuarter: 1,
  sajda: SajdaAyah(recommended: false, obligatory: false),
);

const tTransliterationAyah = TransliterationAyah(en: "en");

const tTranslationAyah = TranslationAyah(en: "en", id: "id");

const tAudio = AudioAyah(
  primary: "primary",
  secondary: ["secondary", "secondary"],
);

const tTafsir = TafsirAyah(id: IdAyah(short: "short", long: "long"));

const tTafsirAyah = SurahAyahTafsir(id: "id");

const tText = TextAyah(
  arab: "arab",
  transliteration: tTransliterationAyah,
);

const tSurah = SurahAyah(
  number: 1,
  name: NameAyah(
    short: "short",
    long: "long",
    transliteration: tTranslationAyah,
    translation: tTranslationAyah,
  ),
  sequence: 1,
  numberOfVerses: 1,
  revelation: RevelationAyah(arab: "arab", en: "en", id: "id"),
  tafsir: tTafsirAyah,
  preBismillah: PreBismillahAyah(
    text: tText,
    translation: tTranslationAyah,
    audio: tAudio,
  ),
);

const tAyah = Ayah(
  number: tNumberAyah,
  meta: tMetaAyah,
  text: tText,
  translation: tTranslationAyah,
  audio: tAudio,
  tafsir: tTafsir,
  surah: tSurah,
);

const tAyahRes = AyahRes(
  code: 0,
  status: "status",
  message: "message",
  data: tAyah,
);
