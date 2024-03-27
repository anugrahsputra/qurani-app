import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'bookmark_model.freezed.dart';
part 'bookmark_model.g.dart';

typedef BookmarkModelList = List<BookmarkModel>;
typedef BookmarkMap = Map<String, dynamic>;

@freezed
abstract class BookmarkModel with _$BookmarkModel {
  @JsonSerializable(explicitToJson: true)
  const factory BookmarkModel({
    required int id,
    required int surahNumber,
    required int verseNumber,
    required String surahName,
    required String surahNameTranslation,
    required String verse,
    required String verseTranslation,
    required String verseTransliteration,
  }) = _BookmarkModel;

  const BookmarkModel._();

  factory BookmarkModel.fromJson(BookmarkMap json) =>
      _$BookmarkModelFromJson(json);

  factory BookmarkModel.fromEntity(Bookmark bookmark) {
    return BookmarkModel(
      id: bookmark.id,
      surahNumber: bookmark.surahNumber,
      verseNumber: bookmark.verseNumber,
      surahName: bookmark.surahName,
      surahNameTranslation: bookmark.surahNameTranslation,
      verse: bookmark.verse,
      verseTranslation: bookmark.verseTranslation,
      verseTransliteration: bookmark.verseTransliteration,
    );
  }
}
