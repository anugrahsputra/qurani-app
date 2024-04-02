import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logging/logging.dart';

import '../../../core/core.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final UserLocation location;

  final Logger _log = Logger('SplashTimeCubit');

  SplashCubit({required this.location}) : super(const SplashState.initial());

  void fetchNextPage() async {
    emit(const SplashLoading());
    String nextPage = AppPages.home;
    try {
      bool serviceEnabled = await location.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _log.warning('Failed to get location: Location service is disabled');
        return;
      }

      LocationPermission permission = await location.checkPermission();
      if (permission != LocationPermission.always &&
          permission != LocationPermission.whileInUse) {
        permission = await location.requestPermission();
        if (permission != LocationPermission.always &&
            permission != LocationPermission.whileInUse) {
          _log.warning('Failed to get location: Location permission denied');
          return;
        }
      }
    } finally {
      emit(SplashLoaded(nextPage));
    }
  }
}
