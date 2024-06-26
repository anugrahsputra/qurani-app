// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahRes _$SurahResFromJson(Map<String, dynamic> json) {
  return _SurahRes.fromJson(json);
}

/// @nodoc
mixin _$SurahRes {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Surah>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahResCopyWith<SurahRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahResCopyWith<$Res> {
  factory $SurahResCopyWith(SurahRes value, $Res Function(SurahRes) then) =
      _$SurahResCopyWithImpl<$Res, SurahRes>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Surah>? data});
}

/// @nodoc
class _$SurahResCopyWithImpl<$Res, $Val extends SurahRes>
    implements $SurahResCopyWith<$Res> {
  _$SurahResCopyWithImpl(this._value, this._then);

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
              as List<Surah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahResImplCopyWith<$Res>
    implements $SurahResCopyWith<$Res> {
  factory _$$SurahResImplCopyWith(
          _$SurahResImpl value, $Res Function(_$SurahResImpl) then) =
      __$$SurahResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Surah>? data});
}

/// @nodoc
class __$$SurahResImplCopyWithImpl<$Res>
    extends _$SurahResCopyWithImpl<$Res, _$SurahResImpl>
    implements _$$SurahResImplCopyWith<$Res> {
  __$$SurahResImplCopyWithImpl(
      _$SurahResImpl _value, $Res Function(_$SurahResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SurahResImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SurahResImpl implements _SurahRes {
  const _$SurahResImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") final List<Surah>? data})
      : _data = data;

  factory _$SurahResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahResImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Surah>? _data;
  @override
  @JsonKey(name: "data")
  List<Surah>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SurahRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahResImplCopyWith<_$SurahResImpl> get copyWith =>
      __$$SurahResImplCopyWithImpl<_$SurahResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahResImplToJson(
      this,
    );
  }
}

abstract class _SurahRes implements SurahRes {
  const factory _SurahRes(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Surah>? data}) = _$SurahResImpl;

  factory _SurahRes.fromJson(Map<String, dynamic> json) =
      _$SurahResImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<Surah>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SurahResImplCopyWith<_$SurahResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
