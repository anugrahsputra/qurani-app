// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppbarEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppbarEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppbarEvent()';
}


}

/// @nodoc
class $AppbarEventCopyWith<$Res>  {
$AppbarEventCopyWith(AppbarEvent _, $Res Function(AppbarEvent) __);
}


/// Adds pattern-matching-related methods to [AppbarEvent].
extension AppbarEventPatterns on AppbarEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ToggleDisplay value)?  toggleDisplay,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ToggleDisplay() when toggleDisplay != null:
return toggleDisplay(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ToggleDisplay value)  toggleDisplay,}){
final _that = this;
switch (_that) {
case ToggleDisplay():
return toggleDisplay(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ToggleDisplay value)?  toggleDisplay,}){
final _that = this;
switch (_that) {
case ToggleDisplay() when toggleDisplay != null:
return toggleDisplay(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  toggleDisplay,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ToggleDisplay() when toggleDisplay != null:
return toggleDisplay();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  toggleDisplay,}) {final _that = this;
switch (_that) {
case ToggleDisplay():
return toggleDisplay();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  toggleDisplay,}) {final _that = this;
switch (_that) {
case ToggleDisplay() when toggleDisplay != null:
return toggleDisplay();case _:
  return null;

}
}

}

/// @nodoc


class ToggleDisplay implements AppbarEvent {
  const ToggleDisplay();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleDisplay);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppbarEvent.toggleDisplay()';
}


}




/// @nodoc
mixin _$AppbarState {

 bool get displayAppbar;
/// Create a copy of AppbarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppbarStateCopyWith<AppbarState> get copyWith => _$AppbarStateCopyWithImpl<AppbarState>(this as AppbarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppbarState&&(identical(other.displayAppbar, displayAppbar) || other.displayAppbar == displayAppbar));
}


@override
int get hashCode => Object.hash(runtimeType,displayAppbar);

@override
String toString() {
  return 'AppbarState(displayAppbar: $displayAppbar)';
}


}

/// @nodoc
abstract mixin class $AppbarStateCopyWith<$Res>  {
  factory $AppbarStateCopyWith(AppbarState value, $Res Function(AppbarState) _then) = _$AppbarStateCopyWithImpl;
@useResult
$Res call({
 bool displayAppbar
});




}
/// @nodoc
class _$AppbarStateCopyWithImpl<$Res>
    implements $AppbarStateCopyWith<$Res> {
  _$AppbarStateCopyWithImpl(this._self, this._then);

  final AppbarState _self;
  final $Res Function(AppbarState) _then;

/// Create a copy of AppbarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayAppbar = null,}) {
  return _then(_self.copyWith(
displayAppbar: null == displayAppbar ? _self.displayAppbar : displayAppbar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppbarState].
extension AppbarStatePatterns on AppbarState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppbarDisplay value)?  appbarDisplay,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppbarDisplay() when appbarDisplay != null:
return appbarDisplay(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppbarDisplay value)  appbarDisplay,}){
final _that = this;
switch (_that) {
case AppbarDisplay():
return appbarDisplay(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppbarDisplay value)?  appbarDisplay,}){
final _that = this;
switch (_that) {
case AppbarDisplay() when appbarDisplay != null:
return appbarDisplay(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool displayAppbar)?  appbarDisplay,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppbarDisplay() when appbarDisplay != null:
return appbarDisplay(_that.displayAppbar);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool displayAppbar)  appbarDisplay,}) {final _that = this;
switch (_that) {
case AppbarDisplay():
return appbarDisplay(_that.displayAppbar);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool displayAppbar)?  appbarDisplay,}) {final _that = this;
switch (_that) {
case AppbarDisplay() when appbarDisplay != null:
return appbarDisplay(_that.displayAppbar);case _:
  return null;

}
}

}

/// @nodoc


class AppbarDisplay implements AppbarState {
  const AppbarDisplay(this.displayAppbar);
  

@override final  bool displayAppbar;

/// Create a copy of AppbarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppbarDisplayCopyWith<AppbarDisplay> get copyWith => _$AppbarDisplayCopyWithImpl<AppbarDisplay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppbarDisplay&&(identical(other.displayAppbar, displayAppbar) || other.displayAppbar == displayAppbar));
}


@override
int get hashCode => Object.hash(runtimeType,displayAppbar);

@override
String toString() {
  return 'AppbarState.appbarDisplay(displayAppbar: $displayAppbar)';
}


}

/// @nodoc
abstract mixin class $AppbarDisplayCopyWith<$Res> implements $AppbarStateCopyWith<$Res> {
  factory $AppbarDisplayCopyWith(AppbarDisplay value, $Res Function(AppbarDisplay) _then) = _$AppbarDisplayCopyWithImpl;
@override @useResult
$Res call({
 bool displayAppbar
});




}
/// @nodoc
class _$AppbarDisplayCopyWithImpl<$Res>
    implements $AppbarDisplayCopyWith<$Res> {
  _$AppbarDisplayCopyWithImpl(this._self, this._then);

  final AppbarDisplay _self;
  final $Res Function(AppbarDisplay) _then;

/// Create a copy of AppbarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayAppbar = null,}) {
  return _then(AppbarDisplay(
null == displayAppbar ? _self.displayAppbar : displayAppbar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
