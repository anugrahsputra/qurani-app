import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/bookmark/data/data.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Database? _database;
  static const String tableName = 'bookmarks';
  Future<Database?> get database async {
    _database ??= await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'bookmarks.db'),
      onCreate: (db, version) {
        return db.execute(
          '''CREATE TABLE $tableName(
                id INTEGER PRIMARY KEY,
                surahNumber INTEGER NOT NULL,
                verseNumber INTEGER NOT NULL,
                surahName TEXT NOT NULL,
                surahNameTranslation TEXT NOT NULL,
                verse TEXT NOT NULL,
                verseTranslation TEXT NOT NULL,
                verseTransliteration TEXT NOT NULL
          )''',
        );
      },
      version: 1,
    );
  }

  Future<List<Map<String, dynamic>>> getBookmarks() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db!.query(tableName);

    return results;
  }

  Future<int> insertBookmark(BookmarkModel bookmark) async {
    final db = await database;
    final id = await db!.insert(tableName, bookmark.toJson());
    return id;
  }

  Future<int> removeBookmark(int id) async {
    final db = await database;
    return await db!.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<Map<String, dynamic>?> getBookmarkById(int id) async {
    final db = await database;
    final result = await db!.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }
}
