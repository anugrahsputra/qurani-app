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

// abstract class BookmarkState extends Equatable {
//   const BookmarkState();

//   @override
//   List<Object> get props => [];
// }

// class BookmarkInitial extends BookmarkState {}

// class BookmarkLoading extends BookmarkState {}

// class BookmarkCheck extends BookmarkState {
//   final bool isBookmarked;

//   const BookmarkCheck(this.isBookmarked);

//   @override
//   List<Object> get props => [isBookmarked];
// }

// class BookmarkLoaded extends BookmarkState {
//   final List<Bookmark> bookmarks;

//   const BookmarkLoaded(this.bookmarks);

//   @override
//   List<Object> get props => [bookmarks];
// }

// class BookmarkMessage extends BookmarkState {
//   final String message;

//   const BookmarkMessage(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class BookmarkError extends BookmarkState {
//   final String message;

//   const BookmarkError(this.message);

//   @override
//   List<Object> get props => [message];
// }
