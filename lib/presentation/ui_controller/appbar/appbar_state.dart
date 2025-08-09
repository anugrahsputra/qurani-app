part of 'appbar_bloc.dart';

@freezed
abstract class AppbarState with _$AppbarState {
  const factory AppbarState.appbarDisplay(bool displayAppbar) = AppbarDisplay;
}
