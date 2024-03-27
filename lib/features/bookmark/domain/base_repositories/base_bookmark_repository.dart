import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../data/data.dart';
import '../domain.dart';

abstract class BookmarkRepository {
  Future<Either<Failure, String>> insertBookmark(BookmarkModel bookmark);
  Future<Either<Failure, String>> removeBookmark(int id);
  Future<Either<Failure, List<Bookmark>>> getBookmarks();
  Future<Either<Failure, Bookmark>> getBookmarkById(int id);
}
