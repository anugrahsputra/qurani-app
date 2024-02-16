// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_detail_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahDetailRes _$SurahDetailResFromJson(Map<String, dynamic> json) {
  return _SurahDetailRes.fromJson(json);
}

/// @nodoc
mixin _$SurahDetailRes {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  SurahDetailModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") SurahDetailModel data});

  $SurahDetailModelCopyWith<$Res> get data;
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
              as SurahDetailModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahDetailModelCopyWith<$Res> get data {
    return $SurahDetailModelCopyWith<$Res>(_value.data, (value) {
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
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") SurahDetailModel data});

  @override
  $SurahDetailModelCopyWith<$Res> get data;
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
    Object? code = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SurahDetailResImpl(
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
              as SurahDetailModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurahDetailResImpl implements _SurahDetailRes {
  const _$SurahDetailResImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data});

  factory _$SurahDetailResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDetailResImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final SurahDetailModel data;

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDetailResImplCopyWith<_$SurahDetailResImpl> get copyWith =>
      __$$SurahDetailResImplCopyWithImpl<_$SurahDetailResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDetailResImplToJson(
      this,
    );
  }
}

abstract class _SurahDetailRes implements SurahDetailRes {
  const factory _SurahDetailRes(
          {@JsonKey(name: "code") required final int code,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final SurahDetailModel data}) =
      _$SurahDetailResImpl;

  factory _SurahDetailRes.fromJson(Map<String, dynamic> json) =
      _$SurahDetailResImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  SurahDetailModel get data;
  @override
  @JsonKey(ignore: true)
  _$$SurahDetailResImplCopyWith<_$SurahDetailResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
