import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../detail_surah/detail_surah.dart';
import '../domain.dart';

class RemoveBookmarkUsecase {
  final BookmarkRepository repository;

  RemoveBookmarkUsecase({required this.repository});

  Future<Either<Failure, String>> call(
    Verse verse,
    String surah,
  ) async {
    return await repository.removeBookmark(verse, surah);
  }
}
