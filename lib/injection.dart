import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/core.dart';
import 'features/detail_surah/detail_surah.dart';
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
      ),
    )..interceptors.add(CustomInterceptor()),
  );
  /* -----------------> External <-----------------*/
  sl.registerFactory<AudioPlayer>(() => AudioPlayer());
  /* -----------------> Core <-----------------*/
  sl.registerFactory<DioClient>(() => DioClientImpl(dio: sl<Dio>()));
  sl.registerFactory<AppNavigator>(() => AppNavigator());
  sl.registerFactory<AudioPlayerManager>(
      () => AudioPlayerManagerImpl(audioPlayers: {}));

  /* -----------------> Data <-----------------*/
  sl.registerLazySingleton<SurahRemoteDataSource>(
    () => SurahRemoteDataSourceImpl(dioClient: sl<DioClient>()),
  );

  sl.registerLazySingleton<DetailSurahRemoteDataSource>(
    () => DetailSurahRemoteDataSourceImpl(dioClient: sl<DioClient>()),
  );
  /* -----------------> Repository <-----------------*/
  sl.registerLazySingleton<BaseSurahRepository>(
    () => SurahRepositoryImpl(remoteDataSource: sl<SurahRemoteDataSource>()),
  );

  sl.registerLazySingleton<SurahDetailRepository>(
    () => ISurahDetailRepository(
        remoteDataSource: sl<DetailSurahRemoteDataSource>()),
  );

  /* -----------------> UseCase <-----------------*/
  sl.registerLazySingleton<GetSurahsUseCase>(
    () => GetSurahsUseCase(sl<BaseSurahRepository>()),
  );

  sl.registerLazySingleton<GetSurahDetailUseCase>(() => GetSurahDetailUseCase(
        repository: sl<SurahDetailRepository>(),
      ));
  /* -----------------> Bloc <-----------------*/
  sl.registerFactory<SurahBloc>(
    () => SurahBloc(getSurahsUseCase: sl<GetSurahsUseCase>()),
  );
  sl.registerFactory<DetailSurahBloc>(
    () => DetailSurahBloc(getSurahDetailUsecase: sl<GetSurahDetailUseCase>()),
  );
  /* -----------------> Cubit <-----------------*/
  sl.registerFactory<VerseAudioCubit>(
    () => VerseAudioCubit(
      audioPlayerManager: sl<AudioPlayerManager>(),
      player: sl<AudioPlayer>(),
    ),
  );
}
