import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetBookmarksUsecase {
  final BookmarkRepository repository;

  GetBookmarksUsecase({required this.repository});

  Future<Either<Failure, List<Bookmark>>> call() async {
    return await repository.getBookmarks();
  }
}
