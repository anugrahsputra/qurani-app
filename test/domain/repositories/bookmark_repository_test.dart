import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkLocalDataSource mockDatasource;
  late BookmarkRepository repository;

  setUp(() {
    registerSl();
    mockDatasource = getMockBookmarkLocalDataSource();
    repository = IBookmarkRepository(datasource: mockDatasource);
  });

  tearDown(() => unregisterSl());

  group('getBookmark', () {
    test('should return list of bookmark when getBookmarks is success',
        () async {
      when(mockDatasource.getBookmarks())
          .thenAnswer((_) async => tBookmarkModelList);

      final result = await repository.getBookmarks();

      final resultData = result.getOrElse(() => []);
      expect(resultData, tBookmarkList);
    });

    test('should return DatabaseFailure when getBookmarks is failed', () async {
      when(mockDatasource.getBookmarks()).thenThrow(DatabaseException());

      final result = await repository.getBookmarks();

      expect(result,
          const Left(DatabaseFailure(message: 'Failed to get bookmarks')));
      verify(mockDatasource.getBookmarks()).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
  });

  group('insertBookmark', () {
    test('should return success message when insertBookmark is success',
        () async {
      when(mockDatasource.insertBookmark(tBookmarkModel))
          .thenAnswer((_) async => 'Bookmark added successfully');

      final result = await repository.insertBookmark(tBookmarkModel);

      expect(result, const Right('Bookmark added successfully'));
      verify(mockDatasource.insertBookmark(tBookmarkModel)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });

    test('should return DatabaseFailure when insert bookmark is failed',
        () async {
      when(mockDatasource.insertBookmark(tBookmarkModel))
          .thenThrow(DatabaseException());

      final result = await repository.insertBookmark(tBookmarkModel);

      expect(result,
          const Left(DatabaseFailure(message: 'Failed to insert bookmark')));
      verify(mockDatasource.insertBookmark(tBookmarkModel)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
  });

  group('removeBookmark', () {
    test('should return success message when removeBookmark is success',
        () async {
      when(mockDatasource.removeBookmark(1))
          .thenAnswer((_) async => 'Bookmark removed successfully');

      final result = await repository.removeBookmark(1);

      expect(result, const Right('Bookmark removed successfully'));
      verify(mockDatasource.removeBookmark(1)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });

    test('should return DatabaseFailure when remove bookmark is failed',
        () async {
      when(mockDatasource.removeBookmark(1)).thenThrow(DatabaseException());

      final result = await repository.removeBookmark(1);

      expect(result,
          const Left(DatabaseFailure(message: 'Failed to remove bookmark')));
      verify(mockDatasource.removeBookmark(1)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
  });

  group('getBookmarkById', () {
    test(
        'should return Right with bookmark when datasource returns a valid result',
        () async {
      when(mockDatasource.getBookmarkById(1))
          .thenAnswer((_) async => tBookmarkModel);

      final result = await repository.getBookmarkById(1);

      expect(result, const Right(tBookmark));
      verify(mockDatasource.getBookmarkById(1)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
    test('should return Left with DatabaseFailure when datasource returns null',
        () async {
      when(mockDatasource.getBookmarkById(1)).thenAnswer((_) async => null);

      final result = await repository.getBookmarkById(1);

      expect(
          result, const Left(DatabaseFailure(message: 'Bookmark not found')));
      verify(mockDatasource.getBookmarkById(1)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
    test('should return DatabaseFailure when getBookmarkById is failed',
        () async {
      when(mockDatasource.getBookmarkById(1)).thenThrow(DatabaseException());

      final result = await repository.getBookmarkById(1);

      expect(result,
          const Left(DatabaseFailure(message: 'Failed to get bookmark')));

      verify(mockDatasource.getBookmarkById(1)).called(1);
      verifyNoMoreInteractions(mockDatasource);
    });
  });
}
