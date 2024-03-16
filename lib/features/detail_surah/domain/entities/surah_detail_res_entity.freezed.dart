// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurahDetailRes {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SurahDetail? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurahDetailResCopyWith<SurahDetailRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDetailResCopyWith<$Res> {
  factory $SurahDetailResCopyWith(
          SurahDetailRes value, $Res Function(SurahDetailRes) then) =
      _$SurahDetailResCopyWithImpl<$Res, SurahDetailRes>;
  @useResult
  $Res call({int? code, String? status, String? message, SurahDetail? data});

  $SurahDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$SurahDetailResCopyWithImpl<$Res, $Val extends SurahDetailRes>
    implements $SurahDetailResCopyWith<$Res> {
  _$SurahDetailResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SurahDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahDetailCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SurahDetailCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahDetailResImplCopyWith<$Res>
    implements $SurahDetailResCopyWith<$Res> {
  factory _$$SurahDetailResImplCopyWith(_$SurahDetailResImpl value,
          $Res Function(_$SurahDetailResImpl) then) =
      __$$SurahDetailResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? status, String? message, SurahDetail? data});

  @override
  $SurahDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SurahDetailResImplCopyWithImpl<$Res>
    extends _$SurahDetailResCopyWithImpl<$Res, _$SurahDetailResImpl>
    implements _$$SurahDetailResImplCopyWith<$Res> {
  __$$SurahDetailResImplCopyWithImpl(
      _$SurahDetailResImpl _value, $Res Function(_$SurahDetailResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SurahDetailResImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SurahDetail?,
    ));
  }
}

/// @nodoc

class _$SurahDetailResImpl implements _SurahDetailRes {
  const _$SurahDetailResImpl({this.code, this.status, this.message, this.data});

  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final SurahDetail? data;

  @override
  String toString() {
    return 'SurahDetailRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDetailResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDetailResImplCopyWith<_$SurahDetailResImpl> get copyWith =>
      __$$SurahDetailResImplCopyWithImpl<_$SurahDetailResImpl>(
          this, _$identity);
}

abstract class _SurahDetailRes implements SurahDetailRes {
  const factory _SurahDetailRes(
      {final int? code,
      final String? status,
      final String? message,
      final SurahDetail? data}) = _$SurahDetailResImpl;

  @override
  int? get code;
  @override
  String? get status;
  @override
  String? get message;
  @override
  SurahDetail? get data;
  @override
  @JsonKey(ignore: true)
  _$$SurahDetailResImplCopyWith<_$SurahDetailResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
