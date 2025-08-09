import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/surah/data/data.dart';
import 'package:qurani/features/surah/domain/domain.dart';

void main() {
  const tSurahRes = SurahRes(code: 0, status: "", message: "", data: []);

  const tSurahResEntity = SurahResEntity(
    code: 0,
    status: "",
    message: "",
    data: [],
  );

  group('surah res model test', () {
    test('should be a subclass of SurahResEntity', () async {
      final result = tSurahRes.toEntity();
      expect(result, tSurahResEntity);
    });

    test('should return a valid model', () {
      final Map<String, dynamic> jsonMap = {
        "code": 0,
        "status": "",
        "message": "",
        "data": [],
      };

      final result = SurahRes.fromJson(jsonMap);
      expect(result, tSurahRes);
    });

    test('should return a valid json', () {
      final result = tSurahRes.toJson();
      final expectedJson = {"code": 0, "status": "", "message": "", "data": []};
      expect(result, expectedJson);
    });
  });
}
