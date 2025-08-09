class ServerException implements Exception {
  final String message;

  ServerException({this.message = "Server Failure"});

  @override
  String toString() => message;
}

class NetworkException implements Exception {
  final String message;

  NetworkException({this.message = "Network Failure"});

  @override
  String toString() => message;
}

class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException({this.message = "Unauthorized Access"});

  @override
  String toString() => message;
}

class BadRequestException implements Exception {
  final String message;

  BadRequestException({this.message = "Bad Request"});

  @override
  String toString() => message;
}

class ForbiddenException implements Exception {
  final String message;

  ForbiddenException({this.message = "Forbidden Access"});

  @override
  String toString() => message;
}

class NotFoundException implements Exception {
  final String message;

  NotFoundException({this.message = "Resource Not Found"});

  @override
  String toString() => message;
}

class CacheException implements Exception {
  final String message;

  CacheException({this.message = "Cache Failure"});

  @override
  String toString() => message;
}

class DatabaseException implements Exception {
  final String message;

  DatabaseException({this.message = "Database Failure"});

  @override
  String toString() => message;
}

class UnknownException implements Exception {
  final String message;

  UnknownException({this.message = "Unknown Error"});

  @override
  String toString() => message;
}
