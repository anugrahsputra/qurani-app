import 'package:adhan/adhan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/annotations.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/bookmark/bookmark.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';
import 'package:qurani/presentation/presentation.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  /* External */
  MockSpec<Dio>(),
  MockSpec<AudioPlayer>(),
  MockSpec<PrayerTimes>(),
  MockSpec<Position>(),
  MockSpec<Geolocator>(),
  /* Core */
  MockSpec<AudioPlayerManager>(),
  MockSpec<DioClient>(),
  MockSpec<CustomInterceptor>(),
  MockSpec<RequestRetrier>(),
  MockSpec<UserLocation>(),
  MockSpec<DatabaseHelper>(),
  /* Data */
  MockSpec<SurahRemoteDataSource>(),
  MockSpec<DetailSurahRemoteDataSource>(),
  MockSpec<AyahRemoteDatasource>(),
  MockSpec<BookmarkLocalDatasource>(),
  /* Domain/Repository */
  MockSpec<BaseSurahRepository>(),
  MockSpec<SurahDetailRepository>(),
  MockSpec<AyahRepository>(),
  MockSpec<BookmarkRepository>(),
  /* Domain/Usecase */
  MockSpec<GetSurahDetailUseCase>(),
  MockSpec<GetSurahsUseCase>(),
  MockSpec<GetSurahAudioUsecase>(),
  MockSpec<GetAyahUsecase>(),
  MockSpec<GetRandomAyahUsecase>(),
  MockSpec<GetBookmarksUsecase>(),
  MockSpec<AddBookmarkUsecase>(),
  MockSpec<RemoveBookmarkUsecase>(),
  MockSpec<IsBookmarkUsecase>(),
  /* Bloc */
  MockSpec<SurahBloc>(),
  MockSpec<DetailSurahBloc>(),
  MockSpec<AyahsBloc>(),
  MockSpec<BookmarkBloc>(),
  MockSpec<AppbarBloc>(),
  /* Cubit */
  MockSpec<PrayerTimeCubit>(),
  MockSpec<VerseAudioCubit>(),
])
void main(List<String> args) {}
