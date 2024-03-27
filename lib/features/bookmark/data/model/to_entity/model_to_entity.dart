import '../../../domain/domain.dart';
import '../model.dart';

extension BookmarkModelToEntity on BookmarkModel {
  Bookmark toEntity() {
    return Bookmark(
      id: id,
      surahNumber: surahNumber,
      verseNumber: verseNumber,
      surahName: surahName,
      surahNameTranslation: surahNameTranslation,
      verse: verse,
      verseTranslation: verseTranslation,
      verseTransliteration: verseTransliteration,
    );
  }
}

extension BookmarkModeltoMap on BookmarkModel {
  BookmarkMap toMap() {
    return {
      'id': id,
      'surahNumber': surahNumber,
      'verseNumber': verseNumber,
      'surahName': surahName,
      'surahNameTranslation': surahNameTranslation,
      'verse': verse,
      'verseTranslation': verseTranslation,
      'verseTransliteration': verseTransliteration,
    };
  }
}
