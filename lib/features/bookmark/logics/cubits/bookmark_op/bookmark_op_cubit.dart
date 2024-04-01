import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../detail_surah/detail_surah.dart';
import '../../../domain/domain.dart';

part 'bookmark_op_cubit.freezed.dart';
part 'bookmark_op_state.dart';

class BookmarkOpCubit extends Cubit<BookmarkOpState> {
  final IsBookmarkUsecase isBookmarkUsecase;
  final AddBookmarkUsecase addBookmarkUsecase;
  final RemoveBookmarkUsecase removeBookmarkUsecase;

  BookmarkOpCubit({
    required this.isBookmarkUsecase,
    required this.addBookmarkUsecase,
    required this.removeBookmarkUsecase,
  }) : super(const IsBookmarked(isBookmarked: false, message: 'initial'));

  Future<void> getBookmarkById(int id) async {
    final result = await isBookmarkUsecase(id);
    emit(
        IsBookmarked(isBookmarked: result, message: 'get bookmark by id: $id'));
  }

  Future<void> addBookmark(Verse verse, String surah) async {
    final result = await addBookmarkUsecase(verse, surah);
    final checkBookmark = await isBookmarkUsecase(verse.number!.inQuran!);

    result.fold(
      (l) =>
          emit(IsBookmarked(isBookmarked: checkBookmark, message: l.message)),
      (r) => emit(IsBookmarked(isBookmarked: checkBookmark, message: r)),
    );
  }

  Future<void> removeBookmark(Verse verse, String surah) async {
    final result = await removeBookmarkUsecase(verse, surah);

    final checkBookmark = await isBookmarkUsecase(verse.number!.inQuran!);

    result.fold(
      (l) =>
          emit(IsBookmarked(isBookmarked: checkBookmark, message: l.message)),
      (r) => emit(IsBookmarked(isBookmarked: checkBookmark, message: r)),
    );
  }
}
