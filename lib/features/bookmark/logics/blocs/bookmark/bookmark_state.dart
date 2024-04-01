part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = BookmarkInitial;
  const factory BookmarkState.loading() = BookmarkLoading;
  const factory BookmarkState.checkBookmark(bool isBookmarked) = BookmarkCheck;
  const factory BookmarkState.loaded(List<Bookmark> bookmarks) = BookmarkLoaded;
  const factory BookmarkState.message(String message) = BookmarkMessage;
  const factory BookmarkState.error(String message) = BookmarkError;
}
