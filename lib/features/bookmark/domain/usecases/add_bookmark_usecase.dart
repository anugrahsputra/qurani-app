import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../../detail_surah/detail_surah.dart';
import '../domain.dart';

class AddBookmarkUsecase {
  final BookmarkRepository repository;

  AddBookmarkUsecase({required this.repository});

  Future<Either<Failure, String>> call(
    Verse verse,
    String surah,
  ) async {
    return await repository.insertBookmark(verse, surah);
  }
}
