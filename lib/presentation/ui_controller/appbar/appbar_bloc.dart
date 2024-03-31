import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_bloc.freezed.dart';
part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc() : super(const AppbarDisplay(false)) {
    on<AppbarEvent>((event, emit) {
      if (event is ToggleDisplay) {
        emit(AppbarDisplay(!state.displayAppbar));
      }
    });
  }
}
