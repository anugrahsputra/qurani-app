part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.fetch() = OnFetchBookmark;
  const factory BookmarkEvent.statusBookmark(int id) = OnBookmarkStatus;
  const factory BookmarkEvent.addBookmark(Verse verse, String surah) =
      OnAddBookmark;

  const factory BookmarkEvent.removeBookmark(Verse verse, String surah) =
      OnRemoveBookmark;
}
