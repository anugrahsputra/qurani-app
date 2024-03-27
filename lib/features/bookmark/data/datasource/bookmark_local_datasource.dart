import '../../../../core/core.dart';
import '../data.dart';

abstract class BookmarkLocalDataSource {
  Future<String> insertBookmark(BookmarkModel bookmark);
  Future<String> removeBookmark(int id);
  Future<List<BookmarkModel>> getBookmarks();
  Future<BookmarkModel?> getBookmarkById(int id);
}

class BookmarkLocalDataSourceImpl implements BookmarkLocalDataSource {
  final DatabaseHelper databaseHelper;

  BookmarkLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<String> insertBookmark(BookmarkModel bookmark) async {
    try {
      await databaseHelper.insertBookmark(bookmark);
      return 'Bookmark added successfully';
    } catch (e) {
      throw DatabaseException();
    }
  }

  @override
  Future<String> removeBookmark(int id) async {
    try {
      await databaseHelper.removeBookmark(id);
      return 'Bookmark removed successfully';
    } catch (e) {
      throw DatabaseException();
    }
  }

  @override
  Future<List<BookmarkModel>> getBookmarks() async {
    final results = await databaseHelper.getBookmarks();
    return results.map((e) => BookmarkModel.fromJson(e)).toList();
  }

  @override
  Future<BookmarkModel?> getBookmarkById(int id) async {
    final result = await databaseHelper.getBookmarkById(id);
    if (result != null) {
      return BookmarkModel.fromJson(result);
    } else {
      return null;
    }
  }
}
