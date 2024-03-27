import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class IBookmarkRepository implements BookmarkRepository {
  final BookmarkLocalDataSource datasource;

  IBookmarkRepository({required this.datasource});

  @override
  Future<Either<Failure, List<Bookmark>>> getBookmarks() async {
    try {
      final results = await datasource.getBookmarks();
      return Right(results.map((e) => e.toEntity()).toList());
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to get bookmarks'));
    }
  }

  @override
  Future<Either<Failure, String>> insertBookmark(BookmarkModel bookmark) async {
    try {
      final result = await datasource.insertBookmark(bookmark);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to insert bookmark'));
    }
  }

  @override
  Future<Either<Failure, String>> removeBookmark(int id) async {
    try {
      final result = await datasource.removeBookmark(id);
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to remove bookmark'));
    }
  }

  @override
  Future<Either<Failure, Bookmark>> getBookmarkById(int id) async {
    try {
      final result = await datasource.getBookmarkById(id);
      if (result != null) {
        return Right(result.toEntity());
      } else {
        return const Left(DatabaseFailure(message: 'Bookmark not found'));
      }
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to get bookmark'));
    }
  }
}
