part of 'appbar_bloc.dart';

// @freezed
// class AppbarEvent with _$AppbarEvent {
//   const factory AppbarEvent.toggleDisplay() = ToggleDisplay;
// }

abstract class AppbarEvent extends Equatable {
  const AppbarEvent();

  @override
  List<Object> get props => [];
}

class ToggleDisplay extends AppbarEvent {
  const ToggleDisplay();

  @override
  List<Object> get props => [];
}
