import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logging/logging.dart';

import '../../injection.dart';
import '../core.dart';

class CustomInterceptor extends Interceptor with InterceptorMixin {
  final Logger log = Logger("Dio Interceptor");
  Dio dio = sl<Dio>(instanceName: "interceptor");
  late final RequestRetrier requestRetrier;

  CustomInterceptor() {
    requestRetrier = RequestRetrier(
      dio: dio,
      internetConnectionChecker: InternetConnectionChecker.createInstance(
        checkInterval: const Duration(seconds: 5),
        checkTimeout: const Duration(seconds: 5),
      ),
    );
  }

  @override
  void onRequest(options, handler) {
    log.fine("Request: ${options.uri}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(response, handler) {
    log.fine("Response: ${response.requestOptions.uri}");
    // if (response.statusCode == 200) {
    //   _cache[response.requestOptions.uri] = response;
    // }
    super.onResponse(response, handler);
  }

  @override
  void onError(err, handler) async {
    log.severe("Error: ${err.requestOptions.uri}");
    if (err.response?.statusCode == 304) {
      log.shout("Cache hit: ${err.requestOptions.uri}");
    }
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
}
