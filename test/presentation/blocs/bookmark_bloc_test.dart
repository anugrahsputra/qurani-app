import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late GetBookmarksUsecase mockGetBookmarkUsecase;
  late IsBookmarkUsecase mockIsBookmarkUsecase;
  late AddBookmarkUsecase mockAddBookmarkUsecase;
  late RemoveBookmarkUsecase mockRemoveBookmarkUsecase;
  late BookmarkBloc bookmarkBloc;

  setUp(() {
    registerSl();
    mockGetBookmarkUsecase = getMockGetBookmarksUsecase();
    mockIsBookmarkUsecase = getMockIsBookmarkUsecase();
    mockAddBookmarkUsecase = getMockAddBookmarkUsecase();
    mockRemoveBookmarkUsecase = getMockRemoveBookmarkUsecase();
    bookmarkBloc = BookmarkBloc(
      addBookmarkUsecase: mockAddBookmarkUsecase,
      usecase: mockGetBookmarkUsecase,
      isBookmarkUsecase: mockIsBookmarkUsecase,
      removeBookmarkUsecase: mockRemoveBookmarkUsecase,
    );
  });

  tearDown(() => unregisterSl());

  group('BookmarkBloc', () {
    blocTest(
      'should emit [BookmarkLoading, BookmarkLoaded] if OnFetchBookmark is called and list is not empty',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockGetBookmarkUsecase.call())
            .thenAnswer((_) async => const Right([tBookmark]));
      },
      act: (bloc) => bookmarkBloc.add(const OnFetchBookmark()),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkLoaded([tBookmark]),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkInitial] if OnFetchBookmark is called and list is empty',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockGetBookmarkUsecase.call())
            .thenAnswer((_) async => const Right([]));
      },
      act: (bloc) => bookmarkBloc.add(const OnFetchBookmark()),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkInitial(),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkError] if OnFetchBookmark is called and failed to get bookmark',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockGetBookmarkUsecase.call()).thenAnswer((_) async =>
            const Left(DatabaseFailure(message: 'Failed get bookmark')));
      },
      act: (bloc) => bookmarkBloc.add(const OnFetchBookmark()),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkError('Failed get bookmark'),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkCheck(false)] if OnBookmarkStatus is called and id is null (not exist in the local database)',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockIsBookmarkUsecase.call(1)).thenAnswer((_) async => false);
      },
      act: (bloc) => bookmarkBloc.add(const OnBookmarkStatus(1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkCheck(false),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkCheck(true)] if OnBookmarkStatus is called and id is not null (exist in the local database)',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockIsBookmarkUsecase.call(1)).thenAnswer((_) async => true);
      },
      act: (bloc) => bookmarkBloc.add(const OnBookmarkStatus(1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkCheck(true),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkMessage] if OnAddBookmark is called when adding bookmark is success',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockAddBookmarkUsecase.call(tVerse, '', 1))
            .thenAnswer((_) async => const Right('Insert bookmark success'));
      },
      act: (bloc) => bookmarkBloc.add(const OnAddBookmark(tVerse, '', 1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkMessage('Insert bookmark success'),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkError] if OnAddBookmark is called when adding bookmark is failed',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockAddBookmarkUsecase.call(tVerse, '', 1)).thenAnswer((_) async =>
            const Left(DatabaseFailure(message: 'Failed to insert bookmark')));
      },
      act: (bloc) => bookmarkBloc.add(const OnAddBookmark(tVerse, '', 1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkError('Failed to insert bookmark'),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkMessage] if OnRemoveBookmark is called when removing bookmark is success',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockRemoveBookmarkUsecase.call(tVerse, '', 1))
            .thenAnswer((_) async => const Right('Remove bookmark success'));
      },
      act: (bloc) => bookmarkBloc.add(const OnRemoveBookmark(tVerse, '', 1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkMessage('Remove bookmark success'),
      ],
    );
    blocTest(
      'should emit [BookmarkLoading, BookmarkError] if OnRemoveBookmark is called when removing bookmark is failed',
      build: () => bookmarkBloc,
      setUp: () {
        when(mockRemoveBookmarkUsecase.call(tVerse, '', 1)).thenAnswer(
            (_) async => const Left(
                DatabaseFailure(message: 'Failed to remove bookmark')));
      },
      act: (bloc) => bookmarkBloc.add(const OnRemoveBookmark(tVerse, '', 1)),
      expect: () => [
        const BookmarkLoading(),
        const BookmarkError('Failed to remove bookmark'),
      ],
    );
  });
}
