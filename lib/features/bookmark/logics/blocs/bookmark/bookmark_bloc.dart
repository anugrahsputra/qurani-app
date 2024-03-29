import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../bookmark.dart';

part 'bookmark_bloc.freezed.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final GetBookmarksUsecase usecase;

  BookmarkBloc({
    required this.usecase,
  }) : super(const BookmarkInitial()) {
    on<OnFetchBookmark>(_onFetchBookmark);
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
}
