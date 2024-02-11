import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:qurani/core/core.dart';
import 'package:qurani/features/surah/surah.dart';

export 'mock.mocks.dart';

@GenerateNiceMocks([
  /* Network */
  MockSpec<Dio>(),
  MockSpec<DioClient>(),
  MockSpec<CustomInterceptor>(),
  MockSpec<RequestRetrier>(),
  /* Data */
  MockSpec<RemoteDataSource>(),
  /* Domain */
  MockSpec<BaseSurahRepository>(),
  MockSpec<GetSurahsUseCase>(),
  /* Bloc */
  MockSpec<SurahBloc>(),
])
void main(List<String> args) {}
