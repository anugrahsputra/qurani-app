part of 'appbar_bloc.dart';

@freezed
class AppbarState with _$AppbarState {
  const factory AppbarState.appbarDisplay(bool displayAppbar) = AppbarDisplay;
}

// class AppbarState extends Equatable {
//   final bool displayAppbar;
//   const AppbarState(this.displayAppbar);

//   @override
//   List<Object> get props => [displayAppbar];
// }
