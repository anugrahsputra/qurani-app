import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';

import 'core/core.dart';
import 'features/ayah/ayah.dart';
import 'features/detail_surah/detail_surah.dart';
import 'features/surah/surah.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  /* -----------------> Network <-----------------*/
  sl.registerFactory<Dio>(
    () => Dio(
      BaseOptions(
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
        connectTimeout: const Duration(seconds: 35),
        receiveTimeout: const Duration(seconds: 35),
        sendTimeout: const Duration(seconds: 35),
      ),
    )..interceptors.addAll([
        CustomInterceptor(),
        DioCacheInterceptor(
          options: CacheOptions(
            store: MemCacheStore(
              maxSize: 1024 * 1024 * 100, // 100MB
              maxEntrySize: 1024 * 1024 * 10, // 10MB
            ),
            policy: CachePolicy.request,
            maxStale: const Duration(days: 7),
            hitCacheOnErrorExcept: [500, 404],
          ),
        ),
      ]),
  );
  /* -----------------> External <-----------------*/
  sl.registerFactory<AudioPlayer>(() => AudioPlayer());
  sl.registerFactory<Location>(() => Location());
  /* -----------------> Core <-----------------*/
  sl.registerFactory<DioClient>(() => DioClientImpl(dio: sl<Dio>()));
  sl.registerFactory<AppNavigator>(() => AppNavigator());
  sl.registerFactory<UserLocation>(
      () => IUserLocation(location: sl<Location>()));
  sl.registerFactory<AudioPlayerManager>(
      () => AudioPlayerManagerImpl(audioPlayers: {}));

  /* -----------------> Data <-----------------*/
  sl.registerLazySingleton<SurahRemoteDataSource>(
    () => SurahRemoteDataSourceImpl(dioClient: sl<DioClient>()),
  );

  sl.registerLazySingleton<DetailSurahRemoteDataSource>(
    () => DetailSurahRemoteDataSourceImpl(dioClient: sl<DioClient>()),
  );

  sl.registerLazySingleton<AyahRemoteDatasource>(
    () => IAyahRemoteDatasource(dioClient: sl<DioClient>()),
  );
  /* -----------------> Repository <-----------------*/
  sl.registerLazySingleton<BaseSurahRepository>(
    () => SurahRepositoryImpl(remoteDataSource: sl<SurahRemoteDataSource>()),
  );

  sl.registerLazySingleton<SurahDetailRepository>(
    () => ISurahDetailRepository(
        remoteDataSource: sl<DetailSurahRemoteDataSource>()),
  );

  sl.registerLazySingleton<AyahRepository>(
    () => IAyahRepository(remoteDatasource: sl<AyahRemoteDatasource>()),
  );

  /* -----------------> UseCase <-----------------*/
  sl.registerLazySingleton<GetSurahsUseCase>(
    () => GetSurahsUseCase(sl<BaseSurahRepository>()),
  );

  sl.registerLazySingleton<GetSurahDetailUseCase>(
    () => GetSurahDetailUseCase(
      repository: sl<SurahDetailRepository>(),
    ),
  );
  sl.registerLazySingleton<GetSurahAudioUsecase>(
    () => GetSurahAudioUsecase(sl<SurahDetailRepository>()),
  );

  sl.registerLazySingleton<GetAyahUsecase>(
    () => GetAyahUsecase(repository: sl<AyahRepository>()),
  );

  sl.registerLazySingleton<GetRandomAyahUsecase>(
    () => GetRandomAyahUsecase(repository: sl<AyahRepository>()),
  );
  /* -----------------> Bloc <-----------------*/
  sl.registerFactory<SurahBloc>(
    () => SurahBloc(getSurahsUseCase: sl<GetSurahsUseCase>()),
  );
  sl.registerFactory<DetailSurahBloc>(
    () => DetailSurahBloc(getSurahDetailUsecase: sl<GetSurahDetailUseCase>()),
  );
  sl.registerFactory<AyahsBloc>(
    () => AyahsBloc(
      getAyahUsecase: sl<GetAyahUsecase>(),
      getRandomAyahUsecase: sl<GetRandomAyahUsecase>(),
    ),
  );
  /* -----------------> Cubit <-----------------*/
  sl.registerFactory<VerseAudioCubit>(
    () => VerseAudioCubit(
      audioPlayerManager: sl<AudioPlayerManager>(),
      player: sl<AudioPlayer>(),
      getSurahAudioUsecase: sl<GetSurahAudioUsecase>(),
    ),
  );
  sl.registerFactory<PrayerTimeCubit>(
      () => PrayerTimeCubit(location: sl<UserLocation>()));
}
