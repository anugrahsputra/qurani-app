import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/core/core.dart';

void main() {
  group('NumberConverterX', () {
    test('toArabicDigits should convert numbers to Arabic digits', () {
      expect(0.toArabicDigits(), '\u0660');
      expect(1.toArabicDigits(), '\u0661');
      expect(2.toArabicDigits(), '\u0662');
      expect(3.toArabicDigits(), '\u0663');
      expect(4.toArabicDigits(), '\u0664');
      expect(5.toArabicDigits(), '\u0665');
      expect(6.toArabicDigits(), '\u0666');
      expect(7.toArabicDigits(), '\u0667');
      expect(8.toArabicDigits(), '\u0668');
      expect(9.toArabicDigits(), '\u0669');
    });
  });
}
