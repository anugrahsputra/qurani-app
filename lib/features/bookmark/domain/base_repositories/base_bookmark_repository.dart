import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../detail_surah/detail_surah.dart';
import '../domain.dart';

abstract class BookmarkRepository {
  Future<Either<Failure, String>> insertBookmark(
      Verse verse, String surah, int surahNumber);
  Future<Either<Failure, String>> removeBookmark(
      Verse verse, String surah, int surahNumber);
  Future<Either<Failure, List<Bookmark>>> getBookmarks();
  Future<bool> isBookmarked(int id);
}
