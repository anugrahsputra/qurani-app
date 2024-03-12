import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../domain.dart';

class GetSurahAudioUsecase {
  final SurahDetailRepository surahRepository;

  GetSurahAudioUsecase(this.surahRepository);

  Future<Either<Failure, AudioFile>> call(int surahNumber) async {
    return await surahRepository.getFullAudio(surahNumber);
  }
}
