import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/bookmark/data/data.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Database? _database;
  static const String _verseTableName = 'verseTable';

  Future<Database?> get database async {
    _database ??= await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    Directory docDir = await getApplicationDocumentsDirectory();

    final String path = join(docDir.path, 'quran.db');

    return openDatabase(
      path,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE $_verseTableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            inSurah INTEGER,
            surahName TEXT,
            textArab TEXT,
            textTranslate TEXT,
            textTransliteration TEXT
          )
          ''');
      },
      version: 1,
    );
  }

  Future<int> insertBookmark(BookmarkTable bookmarkTable) async {
    final db = await database;
    return db!.insert(_verseTableName, bookmarkTable.toJson());
  }

  Future<int> removeBookmark(BookmarkTable bookmark) async {
    final db = await database;
    return db!.delete(
      _verseTableName,
      where: 'id = ?',
      whereArgs: [bookmark.id],
    );
  }

  Future<List<Map<String, dynamic>>> getBookmarks() async {
    final db = await database;
    return db!.query(_verseTableName);
  }

  Future<Map<String, dynamic>?> getBookmarkById(int id) async {
    final db = await database;
    final result = await db!.query(
      _verseTableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result.isNotEmpty ? result.first : null;
  }
}
