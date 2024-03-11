import 'dart:async';

import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logging/logging.dart';

import '../../injection.dart';
import '../core.dart';

class CustomInterceptor extends Interceptor with InterceptorMixin {
  final Logger log = Logger("Dio Interceptor");
  Dio dio = sl<Dio>(instanceName: "interceptor");
  late final RequestRetrier requestRetrier;
  final _cache = <Uri, Response>{};

  CustomInterceptor() {
    requestRetrier = RequestRetrier(
      dio: dio,
      internetConnectionChecker: InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 5),
        checkTimeout: const Duration(seconds: 5),
      ),
    );

    Timer.periodic(const Duration(days: 5), (timer) {
      log.info("Clearing cache");
      clearCache();
    });
  }

  @override
  void onRequest(options, handler) {
    final response = _cache[options.uri];
    if (options.extra["refresh"] == true) {
      log.info("${options.uri}: force refresh, ignore cache! \n");
      return handler.next(options);
    } else if (response != null) {
      log.fine("${options.uri}: cache hit! \n");
      return handler.resolve(response);
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(response, handler) {
    _cache[response.requestOptions.uri] = response;
    log.fine("${response.requestOptions.uri}: cache saved! \n");
    super.onResponse(response, handler);
  }

  @override
  void onError(err, handler) async {
    log.warning("Error: ${err.requestOptions.uri}");
    if (isBadRequest(err)) {
      throw BadRequestException();
    } else if (isUnauthorized(err)) {
      throw UnauthorizedException();
    } else if (isForbidden(err)) {
      throw ForbiddenException();
    } else if (isNotFound(err)) {
      throw NotFoundException();
    } else if (isConnectionError(err)) {
      try {
        log.warning("Connection Error: ${err.requestOptions.uri}");
        final response = await requestRetrier.retryRequest(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        log.severe("Connection Error: ${err.requestOptions.uri}");
        handler.reject(err);
        throw NetworkException();
      }
    }
    super.onError(err, handler);
  }

  void clearCache() {
    _cache.clear();
  }
}
