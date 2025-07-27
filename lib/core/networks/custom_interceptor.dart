import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logging/logging.dart';

import '../../injection.dart';
import '../core.dart';

class CustomInterceptor extends Interceptor with InterceptorMixin {
  final Logger log = Logger("Dio Interceptor");
  Dio dio = sl<Dio>(instanceName: "interceptor");
  late final RequestRetrier requestRetrier;

  // CustomInterceptor() {
  //   requestRetrier = RequestRetrier(
  //     dio: dio,
  //     internetConnectionChecker: InternetConnectionChecker.createInstance(
  //       checkInterval: const Duration(seconds: 5),
  //       checkTimeout: const Duration(seconds: 5),
  //     ),
  //   );
  // }

  CustomInterceptor({RequestRetrier? requestRetrier})
      : requestRetrier =
      requestRetrier ??
          RequestRetrier(
            dio: sl<Dio>(instanceName: "interceptor"),
            internetConnectionChecker: InternetConnectionChecker.createInstance(
              checkInterval: const Duration(seconds: 5),
              checkTimeout: const Duration(seconds: 5),
            ),
          );

  @override
  void onRequest(options, handler) {
    log.fine("➡️ Request [${options.method}] => URL: ${options.uri}");
    log.fine("➡️ Headers: ${options.headers}");
    log.info("➡️ On Send Progress: ${options.onSendProgress}");
    log.fine("Request: ${options.uri}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(response, handler) {
    log.fine("Response: ${response.requestOptions.uri}");
    if (response.data is String) {
      jsonDecode(response.data);
    }
    if (response.statusCode == 304) {
      log.shout("cache hit: ${response.requestOptions.uri}");
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(err, handler) async {
    log.severe("Error: ${err.requestOptions.uri}");
    log.severe("Error: ${err.response?.data}");
    if (isBadRequest(err)) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: BadRequestException(message: err.response!.data["error"]),
        ),
      );
    } else if (isUnauthorized(err)) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: UnauthorizedException(message: err.response!.data["error"]),
        ),
      );
    } else if (isForbidden(err)) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: ForbiddenException(),
        ),
      );
    } else if (isNotFound(err)) {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: NotFoundException(),
        ),
      );
    } else if (isConnectionError(err)) {
      try {
        log.warning("Connection Error: ${err.requestOptions.uri}");
        final response = await requestRetrier.retryRequest(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        log.severe("Connection Error: ${err.requestOptions.uri}");
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: NetworkException(),
          ),
        );
      }
    } else {
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: UnknownException(),
        ),
      );
    }
  }
}