import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain.dart';

part 'surah_bloc.freezed.dart';
part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetSurahsUseCase getSurahsUseCase;

  SurahBloc({required this.getSurahsUseCase}) : super(const SurahInitial()) {
    on<OnGetSurah>(_onGetSurahs);
  }

  void _onGetSurahs(
    OnGetSurah event,
    Emitter<SurahState> emit,
  ) async {
    emit(const SurahLoading());
    final result = await getSurahsUseCase();
    result.fold(
      (failure) => emit(SurahError(failure.message)),
      (surahs) => emit(SurahLoaded(surahs.data)),
    );
  }
}
