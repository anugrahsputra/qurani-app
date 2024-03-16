import '../../../domain/domain.dart';
import '../../data.dart';

extension AyahResModelX on AyahResModel {
  AyahRes toEntity() {
    return AyahRes(
      code: code,
      status: status,
      message: message,
      data: data.toEntity(),
    );
  }
}

extension AyahModelX on AyahModel {
  Ayah toEntity() {
    return Ayah(
      number: number.toEntity(),
      meta: meta.toEntity(),
      text: text.toEntity(),
      translation: translation.toEntity(),
      audio: audio.toEntity(),
      tafsir: tafsir.toEntity(),
      surah: surah.toEntity(),
    );
  }
}

extension AudioAyahModelX on AudioAyahModel {
  AudioAyah toEntity() {
    return AudioAyah(
      primary: primary,
      secondary: secondary,
    );
  }
}

extension MetaAyahModelX on MetaAyahModel {
  MetaAyah toEntity() {
    return MetaAyah(
      juz: juz,
      page: page,
      manzil: manzil,
      ruku: ruku,
      hizbQuarter: hizbQuarter,
      sajda: sajda.toEntity(),
    );
  }
}

extension NumberAyahModelX on NumberAyahModel {
  NumberAyah toEntity() {
    return NumberAyah(
      inQuran: inQuran,
      inSurah: inSurah,
    );
  }
}

extension SajdaAyahModelX on SajdaAyahModel {
  SajdaAyah toEntity() {
    return SajdaAyah(
      recommended: recommended,
      obligatory: obligatory,
    );
  }
}

extension SurahAyahModelX on SurahAyahModel {
  SurahAyah toEntity() {
    return SurahAyah(
      number: number,
      name: name.toEntity(),
      sequence: sequence,
      revelation: revelation.toEntity(),
      tafsir: tafsir.toEntity(),
      numberOfVerses: numberOfVerses,
      preBismillah: preBismillah.toEntity(),
    );
  }
}

extension SurahAyahTafsirModelX on SurahTafsirAyahModel {
  SurahAyahTafsir toEntity() {
    return SurahAyahTafsir(
      id: id,
    );
  }
}

extension PreBismillahAyahModelX on PreBismillahAyahModel {
  PreBismillahAyah toEntity() {
    return PreBismillahAyah(
      text: text.toEntity(),
      translation: translation.toEntity(),
      audio: audio.toEntity(),
    );
  }
}

extension TextAyahModelX on TextsAyahModel {
  TextAyah toEntity() {
    return TextAyah(
      arab: arab,
      transliteration: transliteration.toEntity(),
    );
  }
}

extension TransliterationAyahModelX on TransliterationAyahModel {
  TransliterationAyah toEntity() {
    return TransliterationAyah(
      en: en,
    );
  }
}

extension NameAyahModelX on NameAyahModel {
  NameAyah toEntity() {
    return NameAyah(
      short: short,
      long: long,
      transliteration: transliteration.toEntity(),
      translation: translation.toEntity(),
    );
  }
}

extension TranslationAyahModelX on TranslationAyahModel {
  TranslationAyah toEntity() {
    return TranslationAyah(
      id: id,
      en: en,
    );
  }
}

extension RevelationAyahModelX on RevelationAyahModel {
  RevelationAyah toEntity() {
    return RevelationAyah(
      arab: arab,
      en: en,
      id: id,
    );
  }
}

extension TafsirAyahModelX on TafsirAyahModel {
  TafsirAyah toEntity() {
    return TafsirAyah(
      id: id.toEntity(),
    );
  }
}

extension IdAyahModelX on IdAyahModel {
  IdAyah toEntity() {
    return IdAyah(
      short: short,
      long: long,
    );
  }
}
