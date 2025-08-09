import 'package:dartz/dartz.dart';
import 'package:qurani/features/detail_surah/domain/entities/surah_detail_entity.dart';

import '../../../../core/core.dart';
import '../../domain/domain.dart';
import '../data.dart';

class IBookmarkRepository implements BookmarkRepository {
  final BookmarkLocalDatasource datasource;

  IBookmarkRepository({required this.datasource});

  @override
  Future<Either<Failure, List<Bookmark>>> getBookmarks() async {
    try {
      final result = await datasource.getBookmarks();
      return Right(result.map((data) => data.toEntity()).toList());
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed get bookmarks'));
    }
  }

  @override
  Future<Either<Failure, String>> insertBookmark(
    Verse verse,
    String surah,
    int surahNumber,
  ) async {
    try {
      final result = await datasource.insertBookmark(
        BookmarkTable.fromEntity(verse, surah, surahNumber),
      );
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to insert bookmark'));
    }
  }

  @override
  Future<bool> isBookmarked(int id) async {
    final result = await datasource.getBookmarkById(id);
    return result != null;
  }

  @override
  Future<Either<Failure, String>> removeBookmark(
    Verse verse,
    String surah,
    int surahNumber,
  ) async {
    try {
      final result = await datasource.removeBookmark(
        BookmarkTable.fromEntity(verse, surah, surahNumber),
      );
      return Right(result);
    } on DatabaseException {
      return const Left(DatabaseFailure(message: 'Failed to remove bookmark'));
    }
  }
}
