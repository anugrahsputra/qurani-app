import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/core.dart';
import '../../../domain/domain.dart';

part 'surah_bloc.freezed.dart';
part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetSurahsUseCase getSurahsUseCase;
  SurahBloc({required this.getSurahsUseCase}) : super(const SurahInitial()) {
    on<OnGetSurah>(_onGetSurahs);
    on<OnSearchSurah>(_onSearchSurah,
        transformer: debounce(const Duration(milliseconds: 600)));
  }

  void _onGetSurahs(
    OnGetSurah event,
    Emitter<SurahState> emit,
  ) async {
    emit(const SurahLoading());
    final result = await getSurahsUseCase();
    result.fold(
      (failure) => emit(SurahError(failure.message)),
      (surahs) {
        emit(SurahLoaded(surahs.data));
      },
    );
  }

  void _onSearchSurah(
    OnSearchSurah event,
    Emitter<SurahState> emit,
  ) async {
    emit(const SurahLoading());
    String query = event.query.toLowerCase();
    final result = await getSurahsUseCase();
    result.fold(
      (failure) => emit(SurahError(failure.message)),
      (surahs) {
        List<SurahEntity> listSurah = surahs.data;
        if (query.isEmpty) {
          emit(SurahLoaded(listSurah));
        } else {
          final filteredSurah = listSurah
              .where((surah) =>
                  surah.name.transliteration.id.toLowerCase().contains(query))
              .toList();

          emit(SurahSearched(filteredSurah));
        }
      },
    );
  }
}
