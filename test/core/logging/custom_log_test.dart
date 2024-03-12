import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart';
import 'package:qurani/core/core.dart';

void main() {
  group('CustomLog', () {
    setUp(() {
      CustomLog.isInitialize = false;
    });

    test('initialize sets isInitialize to true', () async {
      await CustomLog.initialize(showLog: true);

      expect(CustomLog.isInitialize, isTrue);
    });

    test('initialize sets Logger.root.level correctly', () async {
      await CustomLog.initialize(showLog: true);

      expect(Logger.root.level, equals(Level.ALL));

      await CustomLog.initialize(showLog: false);

      expect(Logger.root.level, equals(Level.ALL));
    });
  });
}
