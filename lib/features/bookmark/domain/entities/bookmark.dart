import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';

@freezed
abstract class Bookmark with _$Bookmark {
  const factory Bookmark({
    required int id,
    required int inSurah,
    required String surahName,
    required String textArab,
    required String textTranslate,
    required String textTransliteration,
  }) = _Bookmark;
}
