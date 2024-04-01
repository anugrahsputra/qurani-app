import '../../../../core/core.dart';
import '../data.dart';

abstract class BookmarkLocalDatasource {
  Future<String> insertBookmark(BookmarkTable bookmark);
  Future<String> removeBookmark(BookmarkTable bookmark);
  Future<List<BookmarkTable>> getBookmarks();
  Future<BookmarkTable?> getBookmarkById(int id);
}

class IBookmarkLocalDatasource implements BookmarkLocalDatasource {
  final DatabaseHelper databaseHelper;

  IBookmarkLocalDatasource({required this.databaseHelper});

  @override
  Future<String> insertBookmark(BookmarkTable bookmark) async {
    try {
      await databaseHelper.insertBookmark(bookmark);
      return 'Insert bookmark success';
    } catch (e) {
      return 'Insert bookmark failed';
    }
  }

  @override
  Future<String> removeBookmark(BookmarkTable bookmark) async {
    try {
      await databaseHelper.removeBookmark(bookmark);
      return 'Remove bookmark success';
    } catch (e) {
      return 'Remove bookmark failed';
    }
  }

  @override
  Future<List<BookmarkTable>> getBookmarks() async {
    final result = await databaseHelper.getBookmarks();
    return result.map((data) => BookmarkTable.fromJson(data)).toList();
  }

  @override
  Future<BookmarkTable?> getBookmarkById(int id) async {
    final result = await databaseHelper.getBookmarkById(id);
    if (result != null) {
      return BookmarkTable.fromJson(result);
    } else {
      return null;
    }
  }
}
