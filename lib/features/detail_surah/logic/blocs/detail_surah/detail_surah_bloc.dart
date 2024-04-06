import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/domain.dart';

// part 'detail_surah_bloc.freezed.dart';
part 'detail_surah_event.dart';
part 'detail_surah_state.dart';

class DetailSurahBloc extends Bloc<DetailSurahEvent, DetailSurahState> {
  final GetSurahDetailUseCase getSurahDetailUsecase;

  DetailSurahBloc({required this.getSurahDetailUsecase})
      : super(DetailSurahInitial()) {
    on<OnGetDetail>(_onGetDetail);
  }

  void _onGetDetail(
    OnGetDetail event,
    Emitter<DetailSurahState> emit,
  ) async {
    emit(DetailSurahLoading());
    final result = await getSurahDetailUsecase.execute(event.surahNumber);
    result.fold(
      (failure) => emit(DetailSurahError(failure.message)),
      (data) => emit(DetailSurahLoaded(data.data!)),
    );
  }
}
