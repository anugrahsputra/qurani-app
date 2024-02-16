import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/core/core.dart';

void main() {
  group('Exceptions', () {
    test('ServerException should be an instance of Exception', () {
      final exception = ServerException();
      expect(exception, isA<Exception>());
    });
    test('NetworkException should be an instance of Exception', () {
      final exception = NetworkException();
      expect(exception, isA<Exception>());
    });

    test('ForbiddenException should be an instance of Exception', () {
      final exception = ForbiddenException();
      expect(exception, isA<Exception>());
    });
    test('UnauthorizedException should be an instance of Exception', () {
      final exception = UnauthorizedException();
      expect(exception, isA<Exception>());
    });
    test('sBadRequestException should be an instance of Exception', () {
      final exception = BadRequestException();
      expect(exception, isA<Exception>());
    });
    test('NotFoundException should be an instance of Exception', () {
      final exception = NotFoundException();
      expect(exception, isA<Exception>());
    });
    test('CacheException should be an instance of Exception', () {
      final exception = CacheException();
      expect(exception, isA<Exception>());
    });
    test('DatabaseException should be an instance of Exception', () {
      final exception = DatabaseException();
      expect(exception, isA<Exception>());
    });
    test('UnknownException should be an instance of Exception', () {
      final exception = UnknownException();
      expect(exception, isA<Exception>());
    });
  });
}
