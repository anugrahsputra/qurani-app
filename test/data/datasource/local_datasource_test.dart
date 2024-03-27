import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkLocalDataSource datasource;
  late DatabaseHelper mockDatabaseHelper;

  setUp(() {
    registerSl();
    mockDatabaseHelper = getMockDatabaseHelper();
    datasource =
        BookmarkLocalDataSourceImpl(databaseHelper: mockDatabaseHelper);
  });

  tearDown(() => unregisterSl());

  group('insertBookmark', () {
    test('should return success message when insert to database is success ',
        () async {
      when(mockDatabaseHelper.insertBookmark(tBookmarkModel))
          .thenAnswer((_) async => 1);

      final result = await datasource.insertBookmark(tBookmarkModel);

      expect(result, 'Bookmark added successfully');
    });

    test('should throw DatabaseException when insert to database is failed',
        () async {
      when(mockDatabaseHelper.insertBookmark(tBookmarkModel))
          .thenThrow(DatabaseException());

      expect(() async => await datasource.insertBookmark(tBookmarkModel),
          throwsA(isA<DatabaseException>()));
    });
  });
  group('removeBookmark', () {
    test('should return success message when remove from database is success ',
        () async {
      when(mockDatabaseHelper.removeBookmark(1)).thenAnswer((_) async => 1);

      final result = await datasource.removeBookmark(1);

      expect(result, 'Bookmark removed successfully');
    });

    test('should throw DatabaseException when removed from database is failed',
        () async {
      when(mockDatabaseHelper.removeBookmark(1)).thenThrow(DatabaseException());

      expect(() async => await datasource.removeBookmark(1),
          throwsA(isA<DatabaseException>()));
    });
  });
  group('getBookmarks', () {
    test('should return list of bookmark when get from database is success',
        () async {
      when(mockDatabaseHelper.getBookmarks())
          .thenAnswer((_) async => [tBookmarkMap]);

      final result = await datasource.getBookmarks();

      expect(result, [tBookmarkModel]);
    });
  });

  group('getBookmarkById', () {
    test('should return bookmark by Id when get from database is success',
        () async {
      when(mockDatabaseHelper.getBookmarkById(1))
          .thenAnswer((_) async => tBookmarkMap);

      final result = await datasource.getBookmarkById(1);

      expect(result, tBookmarkModel);
    });

    test('should return null when data not found', () async {
      when(mockDatabaseHelper.getBookmarkById(1)).thenAnswer((_) async => null);

      final result = await datasource.getBookmarkById(1);

      expect(result, null);
    });
  });
}
