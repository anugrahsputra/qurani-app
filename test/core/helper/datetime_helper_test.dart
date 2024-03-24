import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/core/helper/datetime_helper.dart';

void main() {
  group('DateTimeHelper', () {
    test('format should return the correct DateTime', () {
      expect(DateTimeHelper.format(), isA<DateTime>());
    });
  });
}
