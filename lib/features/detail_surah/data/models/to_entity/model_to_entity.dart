import '../../../domain/domain.dart';
import '../../data.dart';

extension SurahDetailResModelX on SurahDetailResModel {
  SurahDetailRes toEntity() {
    return SurahDetailRes(
      code: code,
      status: status,
      message: message,
      data: data?.toEntity(),
    );
  }
}

extension SurahDetailModelX on SurahDetailModel {
  SurahDetail toEntity() {
    return SurahDetail(
      number: number,
      sequence: sequence,
      numberOfVerses: numberOfVerses,
      name: name?.toEntity(),
      revelation: revelation?.toEntity(),
      tafsir: tafsir?.toEntity(),
      preBismillah: preBismillah?.toEntity(),
      verses: verses?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension NameModelX on NameModel {
  Name toEntity() {
    return Name(
      short: short,
      long: long,
      transliteration: transliteration?.toEntity(),
      translation: translation?.toEntity(),
    );
  }
}

extension TranslationModelX on TranslationModel {
  Translation toEntity() {
    return Translation(
      en: en,
      id: id,
    );
  }
}

extension PreBismillahModelX on PreBismillahModel {
  PreBismillah toEntity() {
    return PreBismillah(
      text: text?.toEntity(),
      translation: translation?.toEntity(),
      audio: audio?.toEntity(),
    );
  }
}

extension AudioModelX on AudioModel {
  Audio toEntity() {
    return Audio(
      primary: primary,
      secondary: secondary,
    );
  }
}

extension TextsModelX on TextsModel {
  Texts toEntity() {
    return Texts(
      arab: arab,
      transliteration: transliteration?.toEntity(),
    );
  }
}

extension TransliterationModelX on TransliterationModel {
  Transliteration toEntity() {
    return Transliteration(
      en: en,
    );
  }
}

extension RevelationModelX on RevelationModel {
  Revelation toEntity() {
    return Revelation(
      arab: arab,
      en: en,
      id: id,
    );
  }
}

extension TafsirModelX on TafsirModel {
  Tafsir toEntity() {
    return Tafsir(
      id: id,
    );
  }
}

extension VerseModelX on VerseModel {
  Verse toEntity() {
    return Verse(
      number: number?.toEntity(),
      text: text?.toEntity(),
      translation: translation?.toEntity(),
      audio: audio?.toEntity(),
    );
  }
}

extension NumberModelX on NumberModel {
  Number toEntity() {
    return Number(
      inQuran: inQuran,
      inSurah: inSurah,
    );
  }
}
