import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late DatabaseHelper mockDatabaseHelper;
  late BookmarkLocalDatasource bookmarkLocalDatasource;

  setUp(() {
    registerSl();
    mockDatabaseHelper = getMockDatabaseHelper();
    bookmarkLocalDatasource = IBookmarkLocalDatasource(
      databaseHelper: mockDatabaseHelper,
    );
  });

  tearDown(() => unregisterSl());

  group('BookmarkLocalDatasource', () {
    group('insertBookmark', () {
      test(
        'should return success message when insert data is successful',
        () async {
          when(
            mockDatabaseHelper.insertBookmark(tBookmarkTable),
          ).thenAnswer((_) async => 1);

          final result = await bookmarkLocalDatasource.insertBookmark(
            tBookmarkTable,
          );

          expect(result, 'Insert bookmark success');
        },
      );

      test('should return failed message when insert data is failed', () async {
        when(
          mockDatabaseHelper.insertBookmark(tBookmarkTable),
        ).thenThrow(Exception());

        final result = await bookmarkLocalDatasource.insertBookmark(
          tBookmarkTable,
        );

        expect(result, 'Insert bookmark failed');
      });
    });

    group('removeBookmark', () {
      test(
        'should return success message when remove data is successful',
        () async {
          when(
            mockDatabaseHelper.removeBookmark(tBookmarkTable),
          ).thenAnswer((_) async => 1);

          final result = await bookmarkLocalDatasource.removeBookmark(
            tBookmarkTable,
          );

          expect(result, 'Remove bookmark success');
        },
      );

      test('should return failed message when remove data is failed', () async {
        when(
          mockDatabaseHelper.removeBookmark(tBookmarkTable),
        ).thenThrow(Exception());

        final result = await bookmarkLocalDatasource.removeBookmark(
          tBookmarkTable,
        );

        expect(result, 'Remove bookmark failed');
      });
    });

    group('getBookmarks', () {
      test(
        'should return list of BookmarkTable when get data is successful',
        () async {
          when(
            mockDatabaseHelper.getBookmarks(),
          ).thenAnswer((_) async => [tBookmarkMap]);

          final result = await bookmarkLocalDatasource.getBookmarks();

          expect(result, [tBookmarkTable]);
        },
      );
    });

    group('getBookmarkById', () {
      test('should return BookmarkTable when get data is successful', () async {
        when(
          mockDatabaseHelper.getBookmarkById(1),
        ).thenAnswer((_) async => tBookmarkMap);

        final result = await bookmarkLocalDatasource.getBookmarkById(1);

        expect(result, tBookmarkTable);
      });

      test('should return null when get data is failed', () async {
        when(
          mockDatabaseHelper.getBookmarkById(1),
        ).thenAnswer((_) async => null);

        final result = await bookmarkLocalDatasource.getBookmarkById(1);

        expect(result, null);
      });
    });
  });
}
