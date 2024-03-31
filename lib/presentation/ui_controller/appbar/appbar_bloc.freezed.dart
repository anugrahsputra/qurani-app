// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppbarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDisplay value) toggleDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDisplay value)? toggleDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDisplay value)? toggleDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarEventCopyWith<$Res> {
  factory $AppbarEventCopyWith(
          AppbarEvent value, $Res Function(AppbarEvent) then) =
      _$AppbarEventCopyWithImpl<$Res, AppbarEvent>;
}

/// @nodoc
class _$AppbarEventCopyWithImpl<$Res, $Val extends AppbarEvent>
    implements $AppbarEventCopyWith<$Res> {
  _$AppbarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleDisplayImplCopyWith<$Res> {
  factory _$$ToggleDisplayImplCopyWith(
          _$ToggleDisplayImpl value, $Res Function(_$ToggleDisplayImpl) then) =
      __$$ToggleDisplayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleDisplayImplCopyWithImpl<$Res>
    extends _$AppbarEventCopyWithImpl<$Res, _$ToggleDisplayImpl>
    implements _$$ToggleDisplayImplCopyWith<$Res> {
  __$$ToggleDisplayImplCopyWithImpl(
      _$ToggleDisplayImpl _value, $Res Function(_$ToggleDisplayImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleDisplayImpl implements ToggleDisplay {
  const _$ToggleDisplayImpl();

  @override
  String toString() {
    return 'AppbarEvent.toggleDisplay()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleDisplayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleDisplay,
  }) {
    return toggleDisplay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleDisplay,
  }) {
    return toggleDisplay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleDisplay,
    required TResult orElse(),
  }) {
    if (toggleDisplay != null) {
      return toggleDisplay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleDisplay value) toggleDisplay,
  }) {
    return toggleDisplay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleDisplay value)? toggleDisplay,
  }) {
    return toggleDisplay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleDisplay value)? toggleDisplay,
    required TResult orElse(),
  }) {
    if (toggleDisplay != null) {
      return toggleDisplay(this);
    }
    return orElse();
  }
}

abstract class ToggleDisplay implements AppbarEvent {
  const factory ToggleDisplay() = _$ToggleDisplayImpl;
}

/// @nodoc
mixin _$AppbarState {
  bool get displayAppbar => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool displayAppbar) appbarDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool displayAppbar)? appbarDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool displayAppbar)? appbarDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppbarDisplay value) appbarDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppbarDisplay value)? appbarDisplay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppbarDisplay value)? appbarDisplay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppbarStateCopyWith<AppbarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppbarStateCopyWith<$Res> {
  factory $AppbarStateCopyWith(
          AppbarState value, $Res Function(AppbarState) then) =
      _$AppbarStateCopyWithImpl<$Res, AppbarState>;
  @useResult
  $Res call({bool displayAppbar});
}

/// @nodoc
class _$AppbarStateCopyWithImpl<$Res, $Val extends AppbarState>
    implements $AppbarStateCopyWith<$Res> {
  _$AppbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayAppbar = null,
  }) {
    return _then(_value.copyWith(
      displayAppbar: null == displayAppbar
          ? _value.displayAppbar
          : displayAppbar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppbarDisplayImplCopyWith<$Res>
    implements $AppbarStateCopyWith<$Res> {
  factory _$$AppbarDisplayImplCopyWith(
          _$AppbarDisplayImpl value, $Res Function(_$AppbarDisplayImpl) then) =
      __$$AppbarDisplayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool displayAppbar});
}

/// @nodoc
class __$$AppbarDisplayImplCopyWithImpl<$Res>
    extends _$AppbarStateCopyWithImpl<$Res, _$AppbarDisplayImpl>
    implements _$$AppbarDisplayImplCopyWith<$Res> {
  __$$AppbarDisplayImplCopyWithImpl(
      _$AppbarDisplayImpl _value, $Res Function(_$AppbarDisplayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayAppbar = null,
  }) {
    return _then(_$AppbarDisplayImpl(
      null == displayAppbar
          ? _value.displayAppbar
          : displayAppbar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppbarDisplayImpl implements AppbarDisplay {
  const _$AppbarDisplayImpl(this.displayAppbar);

  @override
  final bool displayAppbar;

  @override
  String toString() {
    return 'AppbarState.appbarDisplay(displayAppbar: $displayAppbar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppbarDisplayImpl &&
            (identical(other.displayAppbar, displayAppbar) ||
                other.displayAppbar == displayAppbar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, displayAppbar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppbarDisplayImplCopyWith<_$AppbarDisplayImpl> get copyWith =>
      __$$AppbarDisplayImplCopyWithImpl<_$AppbarDisplayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool displayAppbar) appbarDisplay,
  }) {
    return appbarDisplay(displayAppbar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool displayAppbar)? appbarDisplay,
  }) {
    return appbarDisplay?.call(displayAppbar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool displayAppbar)? appbarDisplay,
    required TResult orElse(),
  }) {
    if (appbarDisplay != null) {
      return appbarDisplay(displayAppbar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppbarDisplay value) appbarDisplay,
  }) {
    return appbarDisplay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppbarDisplay value)? appbarDisplay,
  }) {
    return appbarDisplay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppbarDisplay value)? appbarDisplay,
    required TResult orElse(),
  }) {
    if (appbarDisplay != null) {
      return appbarDisplay(this);
    }
    return orElse();
  }
}

abstract class AppbarDisplay implements AppbarState {
  const factory AppbarDisplay(final bool displayAppbar) = _$AppbarDisplayImpl;

  @override
  bool get displayAppbar;
  @override
  @JsonKey(ignore: true)
  _$$AppbarDisplayImplCopyWith<_$AppbarDisplayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
