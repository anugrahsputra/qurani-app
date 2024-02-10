import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message: message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({required String message}) : super(message: message);
}

class AuthFailure extends Failure {
  const AuthFailure({required String message}) : super(message: message);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure({required String message}) : super(message: message);
}

class RequestFailure extends Failure {
  const RequestFailure({required String message}) : super(message: message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({required String message}) : super(message: message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({required String message}) : super(message: message);
}
