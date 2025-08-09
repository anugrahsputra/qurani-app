import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkLocalDatasource mockDatasource;
  late BookmarkRepository repository;

  setUp(() {
    registerSl();
    mockDatasource = getMockBookmarkLocalDatasource();
    repository = IBookmarkRepository(datasource: mockDatasource);
  });

  tearDown(() => unregisterSl());

  group('BookmarkRepository', () {
    group('getBookmarks', () {
      test('should return list of bookmarks', () async {
        when(
          mockDatasource.getBookmarks(),
        ).thenAnswer((_) async => [tBookmarkTable]);

        final result = await repository.getBookmarks();

        final resultData = result.getOrElse(() => []);
        expect(resultData, [tBookmark]);
        verify(mockDatasource.getBookmarks());
      });
      test('should return database exception if getbookmarks failed', () async {
        when(mockDatasource.getBookmarks()).thenThrow(DatabaseException());

        final result = await repository.getBookmarks();

        expect(
          result,
          const Left(DatabaseFailure(message: 'Failed get bookmarks')),
        );
        verify(mockDatasource.getBookmarks());
      });
    });

    group('isBookmarked', () {
      test('check if bookmark is not null', () async {
        when(
          mockDatasource.getBookmarkById(1),
        ).thenAnswer((_) async => tBookmarkTable);

        final result = await repository.isBookmarked(1);

        expect(result, true);
        verify(mockDatasource.getBookmarkById(1));
      });
      test('check if bookmark is null', () async {
        when(mockDatasource.getBookmarkById(1)).thenAnswer((_) async => null);

        final result = await repository.isBookmarked(1);

        expect(result, false);
        verify(mockDatasource.getBookmarkById(1));
      });
    });

    group('insertBookmark', () {
      test(
        'should return success message if insert bookmark is success',
        () async {
          when(
            mockDatasource.insertBookmark(tBookmarkTable),
          ).thenAnswer((_) async => 'Insert bookmark success');

          final result = await repository.insertBookmark(tVerse, '', 1);

          expect(result, const Right('Insert bookmark success'));
          verify(mockDatasource.insertBookmark(tBookmarkTable));
        },
      );

      test(
        'should return database exception if insert bookmark is fail',
        () async {
          when(
            mockDatasource.insertBookmark(tBookmarkTable),
          ).thenThrow(DatabaseException());

          final result = await repository.insertBookmark(tVerse, '', 1);

          expect(
            result,
            const Left(DatabaseFailure(message: 'Failed to insert bookmark')),
          );
          verify(mockDatasource.insertBookmark(tBookmarkTable));
        },
      );
    });

    group('removeBookmark', () {
      test(
        'should return success message if bookmark removed successfully',
        () async {
          when(
            mockDatasource.removeBookmark(tBookmarkTable),
          ).thenAnswer((_) async => 'Remove bookmark success');

          final result = await repository.removeBookmark(tVerse, '', 1);

          expect(result, const Right('Remove bookmark success'));
          verify(mockDatasource.removeBookmark(tBookmarkTable));
        },
      );
      test(
        'should return failure message if bookmark removed failed',
        () async {
          when(
            mockDatasource.removeBookmark(tBookmarkTable),
          ).thenThrow(DatabaseException());

          final result = await repository.removeBookmark(tVerse, '', 1);

          expect(
            result,
            const Left(DatabaseFailure(message: 'Failed to remove bookmark')),
          );
          verify(mockDatasource.removeBookmark(tBookmarkTable));
        },
      );
    });
  });
}
