import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/core/core.dart';

void main() {
  group('.get()', () {
    test('should return based on Type when available', () {
      expect(Parser.get<bool>(true), true);
      expect(Parser.get<int>(1), 1);
      expect(Parser.get<double>(12.3), 12.3);
      expect(Parser.get<Map>({"name": "Anugrah"}), {"name": "Anugrah"});
    });

    test('should return null on invalid Type', () {
      expect(Parser.get<bool>(1), null);
      expect(Parser.get<int>(true), null);
      expect(Parser.get<double>({"name": "Anugrah"}), null);
      expect(Parser.get<Map>(12.3), null);
    });
  });

  group('.getMap()', () {
    test('should return Map<String, dynamic> when available', () {
      expect(Parser.getMap('{"name": "Anugrah"}'), {"name": "Anugrah"});
    });

    test('should return null on invalid Type', () {
      expect(Parser.getMap(1), null);
      expect(Parser.getMap(true), null);
      expect(Parser.getMap(12.3), null);
      expect(Parser.getMap({"name": "Anugrah"}), null);
    });
  });
}
