import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';

import '../../../../detail_surah/detail_surah.dart';
import '../../../bookmark.dart';

part 'bookmark_bloc.freezed.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final GetBookmarksUsecase usecase;

  final IsBookmarkUsecase isBookmarkUsecase;
  final AddBookmarkUsecase addBookmarkUsecase;
  final RemoveBookmarkUsecase removeBookmarkUsecase;

  final Logger _log = Logger("Bookmark Bloc");

  BookmarkBloc({
    required this.usecase,
    required this.isBookmarkUsecase,
    required this.addBookmarkUsecase,
    required this.removeBookmarkUsecase,
  }) : super(const BookmarkInitial()) {
    on<OnFetchBookmark>(_onFetchBookmark);
    on<OnBookmarkStatus>(_onBookmarkStatus);
    on<OnAddBookmark>(_onAddBookmark);
    on<OnRemoveBookmark>(_onRemoveBookmark);
  }

  void _onFetchBookmark(
    OnFetchBookmark event,
    Emitter<BookmarkState> emit,
  ) async {
    emit(const BookmarkLoading());
    final result = await usecase();
    result.fold(
      (fail) => emit(BookmarkError(fail.message)),
      (r) {
        if (r.isNotEmpty) {
          emit(BookmarkLoaded(r));
        } else {
          emit(const BookmarkInitial());
        }
      },
    );
  }

  void _onBookmarkStatus(
    OnBookmarkStatus event,
    Emitter<BookmarkState> emit,
  ) async {
    emit(const BookmarkLoading());
    final result = await isBookmarkUsecase(event.id);
    _log.info('check bookmark: id:${event.id} $result');
    emit(BookmarkCheck(result));
  }

  void _onAddBookmark(
    OnAddBookmark event,
    Emitter<BookmarkState> emit,
  ) async {
    emit(const BookmarkLoading());
    final result = await addBookmarkUsecase(
      event.verse,
      event.surah,
      event.surahNumber,
    );
    result.fold(
      (l) => emit(BookmarkError(l.message)),
      (r) => emit(BookmarkMessage(r)),
    );
  }

  void _onRemoveBookmark(
    OnRemoveBookmark event,
    Emitter<BookmarkState> emit,
  ) async {
    emit(const BookmarkLoading());
    final result = await removeBookmarkUsecase(
      event.verse,
      event.surah,
      event.surahNumber,
    );
    result.fold(
      (l) => emit(BookmarkError(l.message)),
      (r) => emit(BookmarkMessage(r)),
    );
  }
}
