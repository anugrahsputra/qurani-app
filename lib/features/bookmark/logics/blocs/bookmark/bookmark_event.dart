part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.fetch() = OnFetchBookmark;
  const factory BookmarkEvent.statusBookmark(int id) = OnBookmarkStatus;
  const factory BookmarkEvent.addBookmark(
    Verse verse,
    String surah,
    int surahNumber,
  ) = OnAddBookmark;

  const factory BookmarkEvent.removeBookmark(
    Verse verse,
    String surah,
    int surahNumber,
  ) = OnRemoveBookmark;
}

// abstract class BookmarkEvent extends Equatable {
//   const BookmarkEvent();

//   @override
//   List<Object> get props => [];
// }

// class OnFetchBookmark extends BookmarkEvent {}

// class OnBookmarkStatus extends BookmarkEvent {
//   final int id;

//   const OnBookmarkStatus(this.id);

//   @override
//   List<Object> get props => [id];
// }

// class OnAddBookmark extends BookmarkEvent {
//   final Verse verse;
//   final String surah;
//   final int surahNumber;

//   const OnAddBookmark(this.verse, this.surah, this.surahNumber);

//   @override
//   List<Object> get props => [verse, surah];
// }

// class OnRemoveBookmark extends BookmarkEvent {
//   final Verse verse;
//   final String surah;
//   final int surahNumber;

//   const OnRemoveBookmark(this.verse, this.surah, this.surahNumber);

//   @override
//   List<Object> get props => [verse, surah];
// }
