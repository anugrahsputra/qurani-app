import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';

import '../../dummy_data/audio_file_dummy.dart';

void main() {
  group('audio file model', () {
    test('should be a subclass of AudioFile entity', () {
      final result = tAudioFileModel.toEntity();
      expect(result, tAudioFile);
    });
    test('should return a valid model when the JSON is valid', () {
      final Map<String, dynamic> jsonMap = {
        "id": 1,
        "chapter_id": 1,
        "file_size": 1,
        "format": "format",
        "audio_url": "audioUrl",
      };

      final result = AudioFileModel.fromJson(jsonMap);

      expect(result, tAudioFileModel);
    });

    test('should return a JSON map containing the proper data', () {
      final result = tAudioFileModel.toJson();

      final expectedJsonMap = {
        "id": 1,
        "chapter_id": 1,
        "file_size": 1,
        "format": "format",
        "audio_url": "audioUrl",
      };

      expect(result, expectedJsonMap);
    });
  });
}
