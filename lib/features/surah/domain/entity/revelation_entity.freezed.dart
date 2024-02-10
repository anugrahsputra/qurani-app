// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revelation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RevelationEntity {
  String get arab => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RevelationEntityCopyWith<RevelationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationEntityCopyWith<$Res> {
  factory $RevelationEntityCopyWith(
          RevelationEntity value, $Res Function(RevelationEntity) then) =
      _$RevelationEntityCopyWithImpl<$Res, RevelationEntity>;
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class _$RevelationEntityCopyWithImpl<$Res, $Val extends RevelationEntity>
    implements $RevelationEntityCopyWith<$Res> {
  _$RevelationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RevelationEntityImplCopyWith<$Res>
    implements $RevelationEntityCopyWith<$Res> {
  factory _$$RevelationEntityImplCopyWith(_$RevelationEntityImpl value,
          $Res Function(_$RevelationEntityImpl) then) =
      __$$RevelationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class __$$RevelationEntityImplCopyWithImpl<$Res>
    extends _$RevelationEntityCopyWithImpl<$Res, _$RevelationEntityImpl>
    implements _$$RevelationEntityImplCopyWith<$Res> {
  __$$RevelationEntityImplCopyWithImpl(_$RevelationEntityImpl _value,
      $Res Function(_$RevelationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$RevelationEntityImpl(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RevelationEntityImpl implements _RevelationEntity {
  const _$RevelationEntityImpl(
      {required this.arab, required this.en, required this.id});

  @override
  final String arab;
  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'RevelationEntity(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RevelationEntityImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RevelationEntityImplCopyWith<_$RevelationEntityImpl> get copyWith =>
      __$$RevelationEntityImplCopyWithImpl<_$RevelationEntityImpl>(
          this, _$identity);
}

abstract class _RevelationEntity implements RevelationEntity {
  const factory _RevelationEntity(
      {required final String arab,
      required final String en,
      required final String id}) = _$RevelationEntityImpl;

  @override
  String get arab;
  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$RevelationEntityImplCopyWith<_$RevelationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
