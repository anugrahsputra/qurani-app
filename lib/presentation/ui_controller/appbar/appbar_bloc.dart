import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// part 'appbar_bloc.freezed.dart';
part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc() : super(const AppbarState(false)) {
    on<ToggleDisplay>(_toggleDisplay);
  }

  void _toggleDisplay(
    ToggleDisplay event,
    Emitter<AppbarState> emit,
  ) {
    emit(AppbarState(!state.displayAppbar));
  }
}
