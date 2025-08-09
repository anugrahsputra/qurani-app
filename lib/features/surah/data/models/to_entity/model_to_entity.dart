import '../../../domain/domain.dart';
import '../models.dart';

extension SurahResModelX on SurahRes {
  SurahResEntity toEntity() {
    final surah = data?.map((e) => e.toEntity()).toList();
    return SurahResEntity(
      code: code!,
      status: status!,
      message: message!,
      data: surah!,
    );
  }
}

extension SurahModelX on Surah {
  SurahEntity toEntity() {
    return SurahEntity(
      number: number!,
      sequence: sequence!,
      numberOfVerses: numberOfVerses!,
      name: name!.toEntity(),
      revelation: revelation!.toEntity(),
      tafsir: tafsir!.toEntity(),
    );
  }
}

extension NameModelX on Name {
  NameEntity toEntity() {
    return NameEntity(
      short: short!,
      long: long!,
      transliteration: transliteration!.toEntity(),
      translation: translation!.toEntity(),
    );
  }
}

extension TranslationModelX on Translation {
  TranslationEntity toEntity() {
    return TranslationEntity(en: en!, id: id!);
  }
}

extension RevelationModelX on Revelation {
  RevelationEntity toEntity() {
    return RevelationEntity(arab: arab!, en: en!, id: id!);
  }
}

extension TafsirModelX on Tafsir {
  TafsirEntity toEntity() {
    return TafsirEntity(id: id!);
  }
}
