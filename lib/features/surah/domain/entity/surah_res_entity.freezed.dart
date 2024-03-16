// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurahResEntity {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<SurahEntity> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurahResEntityCopyWith<SurahResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahResEntityCopyWith<$Res> {
  factory $SurahResEntityCopyWith(
          SurahResEntity value, $Res Function(SurahResEntity) then) =
      _$SurahResEntityCopyWithImpl<$Res, SurahResEntity>;
  @useResult
  $Res call({int code, String status, String message, List<SurahEntity> data});
}

/// @nodoc
class _$SurahResEntityCopyWithImpl<$Res, $Val extends SurahResEntity>
    implements $SurahResEntityCopyWith<$Res> {
  _$SurahResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurahEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahResEntityImplCopyWith<$Res>
    implements $SurahResEntityCopyWith<$Res> {
  factory _$$SurahResEntityImplCopyWith(_$SurahResEntityImpl value,
          $Res Function(_$SurahResEntityImpl) then) =
      __$$SurahResEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, String message, List<SurahEntity> data});
}

/// @nodoc
class __$$SurahResEntityImplCopyWithImpl<$Res>
    extends _$SurahResEntityCopyWithImpl<$Res, _$SurahResEntityImpl>
    implements _$$SurahResEntityImplCopyWith<$Res> {
  __$$SurahResEntityImplCopyWithImpl(
      _$SurahResEntityImpl _value, $Res Function(_$SurahResEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SurahResEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SurahEntity>,
    ));
  }
}

/// @nodoc

class _$SurahResEntityImpl implements _SurahResEntity {
  const _$SurahResEntityImpl(
      {required this.code,
      required this.status,
      required this.message,
      required final List<SurahEntity> data})
      : _data = data;

  @override
  final int code;
  @override
  final String status;
  @override
  final String message;
  final List<SurahEntity> _data;
  @override
  List<SurahEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SurahResEntity(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahResEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahResEntityImplCopyWith<_$SurahResEntityImpl> get copyWith =>
      __$$SurahResEntityImplCopyWithImpl<_$SurahResEntityImpl>(
          this, _$identity);
}

abstract class _SurahResEntity implements SurahResEntity {
  const factory _SurahResEntity(
      {required final int code,
      required final String status,
      required final String message,
      required final List<SurahEntity> data}) = _$SurahResEntityImpl;

  @override
  int get code;
  @override
  String get status;
  @override
  String get message;
  @override
  List<SurahEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$SurahResEntityImplCopyWith<_$SurahResEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
