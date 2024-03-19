import 'package:adhan/adhan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/ayah/ayah.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  /* External */
  MockSpec<Dio>(),
  MockSpec<AudioPlayer>(),
  MockSpec<Location>(),
  MockSpec<PrayerTimes>(),
  /* Core */
  MockSpec<AudioPlayerManager>(),
  MockSpec<DioClient>(),
  MockSpec<CustomInterceptor>(),
  MockSpec<RequestRetrier>(),
  MockSpec<UserLocation>(),
  /* Data */
  MockSpec<SurahRemoteDataSource>(),
  MockSpec<DetailSurahRemoteDataSource>(),
  MockSpec<AyahRemoteDatasource>(),
  /* Domain/Repository */
  MockSpec<BaseSurahRepository>(),
  MockSpec<SurahDetailRepository>(),
  MockSpec<AyahRepository>(),
  /* Domain/Usecase */
  MockSpec<GetSurahDetailUseCase>(),
  MockSpec<GetSurahsUseCase>(),
  MockSpec<GetSurahAudioUsecase>(),
  MockSpec<GetAyahUsecase>(),
  MockSpec<GetRandomAyahUsecase>(),
  /* Bloc */
  MockSpec<SurahBloc>(),
])
void main(List<String> args) {}
