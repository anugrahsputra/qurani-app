import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/core/core.dart';

import '../../helper/mock.dart';

void main() {
  late DioClient dioClient;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    dioClient = DioClientImpl(dio: mockDio);
  });

  const url = 'https://example.com';
  final queryParameters = {'param1': 'value1'};
  final options = Options(headers: {'header1': 'value1'});
  final cancelToken = CancelToken();
  final response = Response(
    data: 'Response data',
    statusCode: 200,
    requestOptions: RequestOptions(),
  );
  onReceiveProgress(int count, int total) {}
  dynamic data = {'key': 'value'};
  group('DioClientImpl', () {
    test('get - should make a GET request', () async {
      when(mockDio.get(
        any,
        queryParameters: anyNamed('queryParameters'),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer(
        (_) async => response,
      );

      final result = await dioClient.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      expect(result, equals(response));
      verify(mockDio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      )).called(1);
    });

    test('post - should make a POST request', () async {
      when(mockDio.post(
        any,
        queryParameters: anyNamed('queryParameters'),
        data: anyNamed('data'),
        options: anyNamed('options'),
        cancelToken: anyNamed('cancelToken'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
        onSendProgress: anyNamed('onSendProgress'),
      )).thenAnswer((_) async => response);

      final result = await dioClient.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
      );

      expect(result, equals(response));
      verify(mockDio.post(
        url,
        queryParameters: queryParameters,
        data: anyNamed('data'),
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onReceiveProgress,
      )).called(1);
    });

    test('put - should make a PUT request', () async {
      when(mockDio.put(
        any,
        queryParameters: anyNamed('queryParameters'),
        data: anyNamed('data'),
      )).thenAnswer((_) async => response);

      final result = await dioClient.put(
        url,
        data: data,
        queryParameters: queryParameters,
      );

      expect(result, equals(response));
      verify(mockDio.put(
        url,
        queryParameters: queryParameters,
        data: data,
      )).called(1);
    });

    test('delete - should make a DELETE request', () async {
      when(mockDio.delete(
        any,
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) async => response);

      final result = await dioClient.delete(
        url,
        queryParameters: queryParameters,
      );

      expect(result, equals(response));
      verify(mockDio.delete(
        url,
        queryParameters: queryParameters,
      )).called(1);
    });
  });
}
