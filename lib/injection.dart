import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/core.dart';
import 'features/surah/surah.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  /* -----------------> Network <-----------------*/
  sl.registerFactory<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: Endpoint.baseUrl,
        connectTimeout: const Duration(seconds: 35),
        receiveTimeout: const Duration(seconds: 35),
        sendTimeout: const Duration(seconds: 35),
        contentType: 'application/json',
      ),
    ),
    instanceName: "interceptor",
  );
  sl.registerFactory<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: Endpoint.baseUrl,
        connectTimeout: const Duration(seconds: 35),
        receiveTimeout: const Duration(seconds: 35),
        sendTimeout: const Duration(seconds: 35),
        contentType: 'application/json',
      ),
    )..interceptors.add(CustomInterceptor()),
  );
  sl.registerFactory<DioClient>(() => DioClientImpl(dio: sl<Dio>()));

  /* -----------------> Data <-----------------*/
  sl.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(dioClient: sl<DioClient>()),
  );

  /* -----------------> Repository <-----------------*/
  sl.registerLazySingleton<BaseSurahRepository>(
    () => SurahRepositoryImpl(remoteDataSource: sl<RemoteDataSource>()),
  );

  /* -----------------> UseCase <-----------------*/
  sl.registerLazySingleton<GetSurahsUseCase>(
    () => GetSurahsUseCase(sl<BaseSurahRepository>()),
  );

  /* -----------------> Bloc <-----------------*/
  sl.registerFactory<SurahBloc>(
    () => SurahBloc(getSurahsUseCase: sl<GetSurahsUseCase>()),
  );
}
