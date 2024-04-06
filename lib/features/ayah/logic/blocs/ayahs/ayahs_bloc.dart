import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../ayah.dart';

// part 'ayahs_bloc.freezed.dart';
part 'ayahs_event.dart';
part 'ayahs_state.dart';

class AyahsBloc extends Bloc<AyahsEvent, AyahsState> {
  final GetAyahUsecase getAyahUsecase;
  final GetRandomAyahUsecase getRandomAyahUsecase;

  AyahsBloc({
    required this.getAyahUsecase,
    required this.getRandomAyahUsecase,
  }) : super(AyahInitial()) {
    on<OnGetAyah>(_onGetAyah);
    on<OnGetRandomAyah>(_onGetRandomAyah);
  }

  void _onGetAyah(
    OnGetAyah event,
    Emitter<AyahsState> emit,
  ) async {
    int surahNumber = event.surahNumber;
    int ayahNumber = event.ayahNumber;
    emit(AyahLoading());
    final result = await getAyahUsecase(surahNumber, ayahNumber);
    result.fold(
      (failure) => emit(AyahError(failure.message)),
      (ayah) => emit(AyahLoaded(ayah.data)),
    );
  }

  void _onGetRandomAyah(
    OnGetRandomAyah event,
    Emitter<AyahsState> emit,
  ) async {
    emit(AyahLoading());
    final result = await getRandomAyahUsecase();
    result.fold(
      (failure) => emit(AyahError(failure.message)),
      (ayah) => emit(AyahLoaded(ayah.data)),
    );
  }
}
