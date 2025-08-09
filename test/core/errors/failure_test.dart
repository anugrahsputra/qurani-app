import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/core/errors/failure.dart';

void main() {
  group('Failure', () {
    test('ServerFailure should extend Failure', () {
      const failure = ServerFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('CacheFailure should extend Failure', () {
      const failure = CacheFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('NetworkFailure should extend Failure', () {
      const failure = NetworkFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('AuthFailure should extend Failure', () {
      const failure = UnauthorizedFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('ForbiddenFailure should extend Failure', () {
      const failure = ForbiddenFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('RequestFailure should extend Failure', () {
      const failure = RequestFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('DatabaseFailure should extend Failure', () {
      const failure = DatabaseFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });

    test('UnknownFailure should extend Failure', () {
      const failure = UnknownFailure(message: 'Test message');
      expect(failure, isA<Failure>());
    });
  });
}
