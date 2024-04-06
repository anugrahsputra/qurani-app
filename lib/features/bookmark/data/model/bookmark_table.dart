import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../detail_surah/detail_surah.dart';
import '../../domain/domain.dart';

part 'bookmark_table.freezed.dart';
part 'bookmark_table.g.dart';

@freezed
abstract class BookmarkTable with _$BookmarkTable {
  const factory BookmarkTable({
    required int id,
    required int inSurah,
    required int surahNumber,
    required String surahName,
    required String textArab,
    required String textTranslate,
    required String textTransliteration,
  }) = _BookmarkTable;

  const BookmarkTable._();

  factory BookmarkTable.fromJson(Map<String, dynamic> json) =>
      _$BookmarkTableFromJson(json);

  factory BookmarkTable.fromEntity(Verse verse, String surah, int surahNumber) {
    return BookmarkTable(
      id: verse.number!.inQuran!,
      inSurah: verse.number!.inSurah!,
      surahNumber: surahNumber,
      surahName: surah,
      textArab: verse.text!.arab!,
      textTranslate: verse.translation!.id!,
      textTransliteration: verse.text!.transliteration!.en!,
    );
  }

  Bookmark toEntity() {
    return Bookmark(
      id: id,
      inSurah: inSurah,
      surahNumber: surahNumber,
      surahName: surahName,
      textArab: textArab,
      textTranslate: textTranslate,
      textTransliteration: textTransliteration,
    );
  }
}
