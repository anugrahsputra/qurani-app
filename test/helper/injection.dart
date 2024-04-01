import 'package:adhan/adhan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/bookmark/bookmark.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';
import 'package:qurani/presentation/presentation.dart';

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

MockBookmarkLocalDatasource getMockBookmarkLocalDatasource() {
  MockBookmarkLocalDatasource mock = MockBookmarkLocalDatasource();
  _removeRegistrationIfExists<BookmarkLocalDatasource>();
  sl.registerSingleton<BookmarkLocalDatasource>(mock);
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

MockAddBookmarkUsecase getMockAddBookmarkUsecase() {
  MockAddBookmarkUsecase mock = MockAddBookmarkUsecase();
  _removeRegistrationIfExists<AddBookmarkUsecase>();
  sl.registerSingleton<AddBookmarkUsecase>(mock);
  return mock;
}

MockRemoveBookmarkUsecase getMockRemoveBookmarkUsecase() {
  MockRemoveBookmarkUsecase mock = MockRemoveBookmarkUsecase();
  _removeRegistrationIfExists<RemoveBookmarkUsecase>();
  sl.registerSingleton<RemoveBookmarkUsecase>(mock);
  return mock;
}

MockIsBookmarkUsecase getMockIsBookmarkUsecase() {
  MockIsBookmarkUsecase mock = MockIsBookmarkUsecase();
  _removeRegistrationIfExists<IsBookmarkUsecase>();
  sl.registerSingleton<IsBookmarkUsecase>(mock);
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

MockBookmarkBloc getMockBookmarkBloc() {
  MockBookmarkBloc mock = MockBookmarkBloc();
  _removeRegistrationIfExists<BookmarkBloc>();
  sl.registerSingleton<BookmarkBloc>(mock);
  return mock;
}

MockAppbarBloc getMockAppbarBloc() {
  MockAppbarBloc mock = MockAppbarBloc();
  _removeRegistrationIfExists<AppbarBloc>();
  sl.registerSingleton<AppbarBloc>(mock);
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
  getMockDatabaseHelper();
  /* Data */
  getMockSurahRemoteDataSource();
  getMockDetailSurahRemoteDataSource();
  getMockAyahRemoteDatasource();
  getMockBookmarkLocalDatasource();
  /* Domain/Repository */
  getMockBaseSurahRepository();
  getMockSurahDetailRepository();
  getMockAyahRepository();
  getMockBookmarkRepository();
  /* Domain/Usecase */
  getMockGetSurahDetailUseCase();
  getMockGetSurahsUseCase();
  getMockGetSurahAudioUsecase();
  getMockGetAyahUsecase();
  getMockGetRandomAyahUsecase();
  getMockAddBookmarkUsecase();
  getMockRemoveBookmarkUsecase();
  getMockIsBookmarkUsecase();
  getMockGetBookmarksUsecase();
  /* Bloc */
  getMockSurahBloc();
  getMockDetailSurahBloc();
  getMockAyahBloc();
  getMockBookmarkBloc();
  getMockAppbarBloc();
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
  sl.unregister<DatabaseHelper>();
  /* Data */
  sl.unregister<SurahRemoteDataSource>();
  sl.unregister<DetailSurahRemoteDataSource>();
  sl.unregister<AyahRemoteDatasource>();
  sl.unregister<BookmarkLocalDatasource>();
  /* Domain/Repository */
  sl.unregister<BaseSurahRepository>();
  sl.unregister<SurahDetailRepository>();
  sl.unregister<AyahRepository>();
  sl.unregister<BookmarkRepository>();
  /* Domain/Usecase */
  sl.unregister<GetSurahDetailUseCase>();
  sl.unregister<GetSurahsUseCase>();
  sl.unregister<GetSurahAudioUsecase>();
  sl.unregister<GetAyahUsecase>();
  sl.unregister<GetRandomAyahUsecase>();
  sl.unregister<AddBookmarkUsecase>();
  sl.unregister<RemoveBookmarkUsecase>();
  sl.unregister<IsBookmarkUsecase>();
  sl.unregister<GetBookmarksUsecase>();
  /* Bloc */
  sl.unregister<SurahBloc>();
  sl.unregister<DetailSurahBloc>();
  sl.unregister<AyahsBloc>();
  sl.unregister<BookmarkBloc>();
  sl.unregister<AppbarBloc>();
  /* Cubit */
  sl.unregister<PrayerTimeCubit>();
  sl.unregister<VerseAudioCubit>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (sl.isRegistered<T>()) {
    sl.unregister<T>();
  }
}
