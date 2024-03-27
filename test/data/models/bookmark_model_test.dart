import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';

void main() {
  group('bookmark model', () {
    test('should be a subclass of Bookmark entity', () {
      final result = tBookmarkModel.toEntity();
      expect(result, tBookmark);
    });

    test('should return a valid model when the JSON is valid', () {
      final Map<String, dynamic> jsonMap = {
        "id": 1,
        "surahNumber": 1,
        "surahName": "surahName",
        "surahNameTranslation": "surahNameTranslation",
        "verseNumber": 1,
        "verse": "verse",
        "verseTranslation": "verseTranslation",
        "verseTransliteration": "verseTransliteration",
      };

      final result = BookmarkModel.fromJson(jsonMap);

      expect(result, tBookmarkModel);
    });

    test('should return a JSON map containing the proper data', () {
      final result = tBookmarkModel.toJson();

      final expectedJsonMap = {
        "id": 1,
        "surahNumber": 1,
        "surahName": "surahName",
        "surahNameTranslation": "surahNameTranslation",
        "verseNumber": 1,
        "verse": "verse",
        "verseTranslation": "verseTranslation",
        "verseTransliteration": "verseTransliteration",
      };

      expect(result, expectedJsonMap);
    });
  });
}
