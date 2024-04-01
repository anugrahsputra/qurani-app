import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../dummy_data/surah_detail_dummy.dart';

void main() {
  group('bookmarkTable', () {
    test('should be a subclass of Bookmark entity', () {
      final result = tBookmarkTable.toEntity();
      expect(result, tBookmark);
    });

    test('should return a valid model when the JSON is valid', () {
      final result = BookmarkTable.fromJson(tBookmarkMap);
      expect(result, tBookmarkTable);
    });

    test('should return a JSON map containing the proper data', () {
      final result = tBookmarkTable.toJson();
      expect(result, tBookmarkMap);
    });

    test('should create a BookmarkTable instance from an entity', () {
      final result = BookmarkTable.fromEntity(tVerse, '');
      expect(result, tBookmarkTable);
    });
  });
}
