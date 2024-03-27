import 'package:adhan/adhan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/bookmark/bookmark.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';

import 'mock.mocks.dart';

final sl = GetIt.I;

/* External */
MockDio getMockDio() {
  MockDio mock = MockDio();
  _removeRegistrationIfExists<Dio>();
  sl.registerSingleton<Dio>(mock);
  return mock;
}

MockAudioPlayer getMockAudioPlayer() {
  MockAudioPlayer mock = MockAudioPlayer();
  _removeRegistrationIfExists<AudioPlayer>();
  sl.registerSingleton<AudioPlayer>(mock);
  return mock;
}

MockPrayerTimes getMockPrayerTimes() {
  MockPrayerTimes mock = MockPrayerTimes();
  _removeRegistrationIfExists<PrayerTimes>();
  sl.registerSingleton<PrayerTimes>(mock);
  return mock;
}

/* Core */
MockAudioPlayerManager getMockAudioPlayerManager() {
  MockAudioPlayerManager mock = MockAudioPlayerManager();
  _removeRegistrationIfExists<AudioPlayerManager>();
  sl.registerSingleton<AudioPlayerManager>(mock);
  return mock;
}

MockDioClient getMockDioClient() {
  MockDioClient mock = MockDioClient();
  _removeRegistrationIfExists<DioClient>();
  sl.registerSingleton<DioClient>(mock);
  return mock;
}

MockUserLocation getMockUserLocation() {
  MockUserLocation mock = MockUserLocation();
  _removeRegistrationIfExists<UserLocation>();
  sl.registerSingleton<UserLocation>(mock);
  return mock;
}

MockCustomInterceptor getMockCustomInterceptor() {
  MockCustomInterceptor mock = MockCustomInterceptor();
  _removeRegistrationIfExists<CustomInterceptor>();
  sl.registerSingleton<CustomInterceptor>(mock);
  return mock;
}

MockRequestRetrier getMockRequestRetrier() {
  MockRequestRetrier mock = MockRequestRetrier();
  _removeRegistrationIfExists<RequestRetrier>();
  sl.registerSingleton<RequestRetrier>(mock);
  return mock;
}

MockDatabaseHelper getMockDatabaseHelper() {
  MockDatabaseHelper mock = MockDatabaseHelper();
  _removeRegistrationIfExists<DatabaseHelper>();
  sl.registerSingleton<DatabaseHelper>(mock);
  return mock;
}

/* Data */
MockSurahRemoteDataSource getMockSurahRemoteDataSource() {
  MockSurahRemoteDataSource mock = MockSurahRemoteDataSource();
  _removeRegistrationIfExists<SurahRemoteDataSource>();
  sl.registerSingleton<SurahRemoteDataSource>(mock);
  return mock;
}

MockDetailSurahRemoteDataSource getMockDetailSurahRemoteDataSource() {
  MockDetailSurahRemoteDataSource mock = MockDetailSurahRemoteDataSource();
  _removeRegistrationIfExists<DetailSurahRemoteDataSource>();
  sl.registerSingleton<DetailSurahRemoteDataSource>(mock);
  return mock;
}

MockAyahRemoteDatasource getMockAyahRemoteDatasource() {
  MockAyahRemoteDatasource mock = MockAyahRemoteDatasource();
  _removeRegistrationIfExists<AyahRemoteDatasource>();
  sl.registerSingleton<AyahRemoteDatasource>(mock);
  return mock;
}

MockBookmarkLocalDataSource getMockBookmarkLocalDataSource() {
  MockBookmarkLocalDataSource mock = MockBookmarkLocalDataSource();
  _removeRegistrationIfExists<BookmarkLocalDataSource>();
  sl.registerSingleton<BookmarkLocalDataSource>(mock);
  return mock;
}

/* Domain/Repository */
MockBaseSurahRepository getMockBaseSurahRepository() {
  MockBaseSurahRepository mock = MockBaseSurahRepository();
  _removeRegistrationIfExists<BaseSurahRepository>();
  sl.registerSingleton<BaseSurahRepository>(mock);
  return mock;
}

MockSurahDetailRepository getMockSurahDetailRepository() {
  MockSurahDetailRepository mock = MockSurahDetailRepository();
  _removeRegistrationIfExists<SurahDetailRepository>();
  sl.registerSingleton<SurahDetailRepository>(mock);
  return mock;
}

MockAyahRepository getMockAyahRepository() {
  MockAyahRepository mock = MockAyahRepository();
  _removeRegistrationIfExists<AyahRepository>();
  sl.registerSingleton<AyahRepository>(mock);
  return mock;
}

MockBookmarkRepository getMockBookmarkRepository() {
  MockBookmarkRepository mock = MockBookmarkRepository();
  _removeRegistrationIfExists<BookmarkRepository>();
  sl.registerSingleton<BookmarkRepository>(mock);
  return mock;
}

/* Domain/Usecase */
MockGetSurahDetailUseCase getMockGetSurahDetailUseCase() {
  MockGetSurahDetailUseCase mock = MockGetSurahDetailUseCase();
  _removeRegistrationIfExists<GetSurahDetailUseCase>();
  sl.registerSingleton<GetSurahDetailUseCase>(mock);
  return mock;
}

MockGetSurahsUseCase getMockGetSurahsUseCase() {
  MockGetSurahsUseCase mock = MockGetSurahsUseCase();
  _removeRegistrationIfExists<GetSurahsUseCase>();
  sl.registerSingleton<GetSurahsUseCase>(mock);
  return mock;
}

MockGetSurahAudioUsecase getMockGetSurahAudioUsecase() {
  MockGetSurahAudioUsecase mock = MockGetSurahAudioUsecase();
  _removeRegistrationIfExists<GetSurahAudioUsecase>();
  sl.registerSingleton<GetSurahAudioUsecase>(mock);
  return mock;
}

MockGetAyahUsecase getMockGetAyahUsecase() {
  MockGetAyahUsecase mock = MockGetAyahUsecase();
  _removeRegistrationIfExists<GetAyahUsecase>();
  sl.registerSingleton<GetAyahUsecase>(mock);
  return mock;
}

MockGetRandomAyahUsecase getMockGetRandomAyahUsecase() {
  MockGetRandomAyahUsecase mock = MockGetRandomAyahUsecase();
  _removeRegistrationIfExists<GetRandomAyahUsecase>();
  sl.registerSingleton<GetRandomAyahUsecase>(mock);
  return mock;
}

MockInsertBookmarkUsecase getMockInsertBookmarkUsecase() {
  MockInsertBookmarkUsecase mock = MockInsertBookmarkUsecase();
  _removeRegistrationIfExists<InsertBookmarkUsecase>();
  sl.registerSingleton<InsertBookmarkUsecase>(mock);
  return mock;
}

MockGetBookmarksUsecase getMockGetBookmarksUsecase() {
  MockGetBookmarksUsecase mock = MockGetBookmarksUsecase();
  _removeRegistrationIfExists<GetBookmarksUsecase>();
  sl.registerSingleton<GetBookmarksUsecase>(mock);
  return mock;
}

/* Bloc */
MockSurahBloc getMockSurahBloc() {
  MockSurahBloc mock = MockSurahBloc();
  _removeRegistrationIfExists<SurahBloc>();
  sl.registerSingleton<SurahBloc>(mock);
  return mock;
}

MockDetailSurahBloc getMockDetailSurahBloc() {
  MockDetailSurahBloc mock = MockDetailSurahBloc();
  _removeRegistrationIfExists<DetailSurahBloc>();
  sl.registerSingleton<DetailSurahBloc>(mock);
  return mock;
}

MockAyahsBloc getMockAyahBloc() {
  MockAyahsBloc mock = MockAyahsBloc();
  _removeRegistrationIfExists<AyahsBloc>();
  sl.registerSingleton<AyahsBloc>(mock);
  return mock;
}

/* Cubit */
MockPrayerTimeCubit getMockPrayerTimeCubit() {
  MockPrayerTimeCubit mock = MockPrayerTimeCubit();
  _removeRegistrationIfExists<PrayerTimeCubit>();
  sl.registerSingleton<PrayerTimeCubit>(mock);
  return mock;
}

MockVerseAudioCubit getMockVerseAudioCubit() {
  MockVerseAudioCubit mock = MockVerseAudioCubit();
  _removeRegistrationIfExists<VerseAudioCubit>();
  sl.registerSingleton<VerseAudioCubit>(mock);
  return mock;
}

void registerSl() {
  /* External */
  getMockDio();
  getMockAudioPlayer();
  getMockPrayerTimes();
  /* Core */
  getMockAudioPlayerManager();
  getMockDioClient();
  getMockUserLocation();
  getMockCustomInterceptor();
  getMockRequestRetrier();
  /* Data */
  getMockSurahRemoteDataSource();
  getMockDetailSurahRemoteDataSource();
  getMockAyahRemoteDatasource();
  /* Domain/Repository */
  getMockBaseSurahRepository();
  getMockSurahDetailRepository();
  getMockAyahRepository();
  /* Domain/Usecase */
  getMockGetSurahDetailUseCase();
  getMockGetSurahsUseCase();
  getMockGetSurahAudioUsecase();
  getMockGetAyahUsecase();
  getMockGetRandomAyahUsecase();
  /* Bloc */
  getMockSurahBloc();
  getMockDetailSurahBloc();
  getMockAyahBloc();
  /* Cubit */
  getMockPrayerTimeCubit();
  getMockVerseAudioCubit();
}

void unregisterSl() {
  /* External */
  sl.unregister<Dio>();
  sl.unregister<AudioPlayer>();
  sl.unregister<PrayerTimes>();
  /* Core */
  sl.unregister<AudioPlayerManager>();
  sl.unregister<DioClient>();
  sl.unregister<UserLocation>();
  sl.unregister<CustomInterceptor>();
  sl.unregister<RequestRetrier>();
  /* Data */
  sl.unregister<SurahRemoteDataSource>();
  sl.unregister<DetailSurahRemoteDataSource>();
  sl.unregister<AyahRemoteDatasource>();
  /* Domain/Repository */
  sl.unregister<BaseSurahRepository>();
  sl.unregister<SurahDetailRepository>();
  sl.unregister<AyahRepository>();
  /* Domain/Usecase */
  sl.unregister<GetSurahDetailUseCase>();
  sl.unregister<GetSurahsUseCase>();
  sl.unregister<GetSurahAudioUsecase>();
  sl.unregister<GetAyahUsecase>();
  sl.unregister<GetRandomAyahUsecase>();
  /* Bloc */
  sl.unregister<SurahBloc>();
  sl.unregister<DetailSurahBloc>();
  sl.unregister<AyahsBloc>();
  /* Cubit */
  sl.unregister<PrayerTimeCubit>();
  sl.unregister<VerseAudioCubit>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (sl.isRegistered<T>()) {
    sl.unregister<T>();
  }
}
