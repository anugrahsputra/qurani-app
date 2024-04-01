part of 'bookmark_op_cubit.dart';

@freezed
class BookmarkOpState with _$BookmarkOpState {
  const factory BookmarkOpState.isBookmarked({
    required bool isBookmarked,
    required String message,
  }) = IsBookmarked;
}
