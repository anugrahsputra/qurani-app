import '../domain.dart';

class IsBookmarkUsecase {
  final BookmarkRepository repository;

  IsBookmarkUsecase({required this.repository});

  Future<bool> call(int id) async {
    return await repository.isBookmarked(id);
  }
}
