// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() play,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? play,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioInitial value) initial,
    required TResult Function(AudioLoading value) loading,
    required TResult Function(PlayAudio value) play,
    required TResult Function(StopAudio value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioInitial value)? initial,
    TResult? Function(AudioLoading value)? loading,
    TResult? Function(PlayAudio value)? play,
    TResult? Function(StopAudio value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioInitial value)? initial,
    TResult Function(AudioLoading value)? loading,
    TResult Function(PlayAudio value)? play,
    TResult Function(StopAudio value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioInitialImplCopyWith<$Res> {
  factory _$$AudioInitialImplCopyWith(
          _$AudioInitialImpl value, $Res Function(_$AudioInitialImpl) then) =
      __$$AudioInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioInitialImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioInitialImpl>
    implements _$$AudioInitialImplCopyWith<$Res> {
  __$$AudioInitialImplCopyWithImpl(
      _$AudioInitialImpl _value, $Res Function(_$AudioInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioInitialImpl implements AudioInitial {
  const _$AudioInitialImpl();

  @override
  String toString() {
    return 'AudioPlayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioInitial value) initial,
    required TResult Function(AudioLoading value) loading,
    required TResult Function(PlayAudio value) play,
    required TResult Function(StopAudio value) stop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioInitial value)? initial,
    TResult? Function(AudioLoading value)? loading,
    TResult? Function(PlayAudio value)? play,
    TResult? Function(StopAudio value)? stop,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioInitial value)? initial,
    TResult Function(AudioLoading value)? loading,
    TResult Function(PlayAudio value)? play,
    TResult Function(StopAudio value)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AudioInitial implements AudioPlayerState {
  const factory AudioInitial() = _$AudioInitialImpl;
}

/// @nodoc
abstract class _$$AudioLoadingImplCopyWith<$Res> {
  factory _$$AudioLoadingImplCopyWith(
          _$AudioLoadingImpl value, $Res Function(_$AudioLoadingImpl) then) =
      __$$AudioLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudioLoadingImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$AudioLoadingImpl>
    implements _$$AudioLoadingImplCopyWith<$Res> {
  __$$AudioLoadingImplCopyWithImpl(
      _$AudioLoadingImpl _value, $Res Function(_$AudioLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AudioLoadingImpl implements AudioLoading {
  const _$AudioLoadingImpl();

  @override
  String toString() {
    return 'AudioPlayerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudioLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioInitial value) initial,
    required TResult Function(AudioLoading value) loading,
    required TResult Function(PlayAudio value) play,
    required TResult Function(StopAudio value) stop,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioInitial value)? initial,
    TResult? Function(AudioLoading value)? loading,
    TResult? Function(PlayAudio value)? play,
    TResult? Function(StopAudio value)? stop,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioInitial value)? initial,
    TResult Function(AudioLoading value)? loading,
    TResult Function(PlayAudio value)? play,
    TResult Function(StopAudio value)? stop,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AudioLoading implements AudioPlayerState {
  const factory AudioLoading() = _$AudioLoadingImpl;
}

/// @nodoc
abstract class _$$PlayAudioImplCopyWith<$Res> {
  factory _$$PlayAudioImplCopyWith(
          _$PlayAudioImpl value, $Res Function(_$PlayAudioImpl) then) =
      __$$PlayAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayAudioImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$PlayAudioImpl>
    implements _$$PlayAudioImplCopyWith<$Res> {
  __$$PlayAudioImplCopyWithImpl(
      _$PlayAudioImpl _value, $Res Function(_$PlayAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayAudioImpl implements PlayAudio {
  const _$PlayAudioImpl();

  @override
  String toString() {
    return 'AudioPlayerState.play()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioInitial value) initial,
    required TResult Function(AudioLoading value) loading,
    required TResult Function(PlayAudio value) play,
    required TResult Function(StopAudio value) stop,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioInitial value)? initial,
    TResult? Function(AudioLoading value)? loading,
    TResult? Function(PlayAudio value)? play,
    TResult? Function(StopAudio value)? stop,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioInitial value)? initial,
    TResult Function(AudioLoading value)? loading,
    TResult Function(PlayAudio value)? play,
    TResult Function(StopAudio value)? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class PlayAudio implements AudioPlayerState {
  const factory PlayAudio() = _$PlayAudioImpl;
}

/// @nodoc
abstract class _$$StopAudioImplCopyWith<$Res> {
  factory _$$StopAudioImplCopyWith(
          _$StopAudioImpl value, $Res Function(_$StopAudioImpl) then) =
      __$$StopAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopAudioImplCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$StopAudioImpl>
    implements _$$StopAudioImplCopyWith<$Res> {
  __$$StopAudioImplCopyWithImpl(
      _$StopAudioImpl _value, $Res Function(_$StopAudioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopAudioImpl implements StopAudio {
  const _$StopAudioImpl();

  @override
  String toString() {
    return 'AudioPlayerState.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AudioInitial value) initial,
    required TResult Function(AudioLoading value) loading,
    required TResult Function(PlayAudio value) play,
    required TResult Function(StopAudio value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AudioInitial value)? initial,
    TResult? Function(AudioLoading value)? loading,
    TResult? Function(PlayAudio value)? play,
    TResult? Function(StopAudio value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AudioInitial value)? initial,
    TResult Function(AudioLoading value)? loading,
    TResult Function(PlayAudio value)? play,
    TResult Function(StopAudio value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopAudio implements AudioPlayerState {
  const factory StopAudio() = _$StopAudioImpl;
}
