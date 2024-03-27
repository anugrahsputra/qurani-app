import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';

@freezed
abstract class Bookmark with _$Bookmark {
  const factory Bookmark({
    required int id,
    required int surahNumber,
    required int verseNumber,
    required String surahName,
    required String surahNameTranslation,
    required String verse,
    required String verseTranslation,
    required String verseTransliteration,
  }) = _Bookmark;
}
