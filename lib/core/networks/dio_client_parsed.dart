import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:qurani/core/core.dart';

typedef ResponseConverter<T> = T Function(Map<String, dynamic> json);

final Logger log = Logger("DioClient");

extension DioClientParsed on DioClient {
  Future<T> getParsed<T>(
    String url, {
    required ResponseConverter<T> converter,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool useIsolate = true,
  }) async {
    final response = await get(
      url,
      queryParameters: queryParameters,
      options: options,
    );

    dynamic data = response.data;
    log.info(data);
    if (data is String) {
      // Attempt to parse string bodies into JSON maps
      try {
        data = jsonDecode(data) as Map<String, dynamic>;
      } catch (_) {
        throw Exception("Invalid response format: expected JSON object string");
      }
    }
    if (data is! Map<String, dynamic>) {
      throw Exception("Invalid response format");
    }

    return useIsolate
        ? await IsolateParser<T>(data, converter).parseInBackground()
        : converter(data);
  }

  Future<List<T>> getParsedList<T>(
    String url, {
    required T Function(Map<String, dynamic>) converter,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool useIsolate = true,
  }) async {
    final response = await get(
      url,
      queryParameters: queryParameters,
      options: options,
    );

    dynamic data = response.data;
    if (data is String) {
      try {
        data = jsonDecode(data);
      } catch (_) {
        throw Exception("Invalid response format: expected JSON array string");
      }
    }
    if (data is! List) {
      throw Exception("Expected list but got ${data.runtimeType}");
    }

    return useIsolate
        ? await IsolateListParser<T>(data, converter).parseInBackground()
        : data.map<T>((e) => converter(e as Map<String, dynamic>)).toList();
  }

  Future<T> postParsed<T>(
    String url, {
    required ResponseConverter<T> converter,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
    bool useIsolate = true,
  }) async {
    final response = await post(
      url,
      queryParameters: queryParameters,
      data: data,
      options: options,
    );

    dynamic responseData = response.data;
    if (responseData is String) {
      try {
        responseData = jsonDecode(responseData) as Map<String, dynamic>;
      } catch (_) {
        throw Exception("Invalid response format: expected JSON object string");
      }
    }
    if (responseData is! Map<String, dynamic>) {
      throw Exception("Invalid response format");
    }

    return useIsolate
        ? await IsolateParser<T>(responseData, converter).parseInBackground()
        : converter(responseData);
  }

  Future<Either<Failure, T>> getParsedSafe<T>(
    String url, {
    required ResponseConverter<T> converter,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool useIsolate = true,
  }) {
    return safeCall(
      () => getParsed<T>(
        url,
        converter: converter,
        queryParameters: queryParameters,
        options: options,
        useIsolate: useIsolate,
      ),
    );
  }

  Future<Either<Failure, List<T>>> getParsedListSafe<T>(
    String url, {
    required T Function(Map<String, dynamic>) converter,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool useIsolate = true,
  }) {
    return safeCall(
      () => getParsedList<T>(
        url,
        converter: converter,
        queryParameters: queryParameters,
        options: options,
        useIsolate: useIsolate,
      ),
    );
  }

  Future<Either<Failure, T>> postParsedSafe<T>(
    String url, {
    required ResponseConverter<T> converter,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
    bool useIsolate = true,
  }) {
    return safeCall(
      () => postParsed<T>(
        url,
        converter: converter,
        queryParameters: queryParameters,
        data: data,
        options: options,
        useIsolate: useIsolate,
      ),
    );
  }
}
