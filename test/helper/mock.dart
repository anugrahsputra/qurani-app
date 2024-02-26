import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/detail_surah/detail_surah.dart';
import 'package:qurani/features/surah/surah.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  /* External */
  MockSpec<Dio>(),
  MockSpec<AudioPlayer>(),
  /* Core */
  MockSpec<AudioPlayerManager>(),
  MockSpec<DioClient>(),
  MockSpec<CustomInterceptor>(),
  MockSpec<RequestRetrier>(),
  /* Data */
  MockSpec<SurahRemoteDataSource>(),
  MockSpec<DetailSurahRemoteDataSource>(),
  /* Domain/Repository */
  MockSpec<BaseSurahRepository>(),
  MockSpec<SurahDetailRepository>(),
  /* Domain/Usecase */
  MockSpec<GetSurahDetailUseCase>(),
  MockSpec<GetSurahsUseCase>(),
  /* Bloc */
  MockSpec<SurahBloc>(),
])
void main(List<String> args) {}
