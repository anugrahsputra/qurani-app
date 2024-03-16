// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslationEntity {
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TranslationEntityCopyWith<TranslationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationEntityCopyWith<$Res> {
  factory $TranslationEntityCopyWith(
          TranslationEntity value, $Res Function(TranslationEntity) then) =
      _$TranslationEntityCopyWithImpl<$Res, TranslationEntity>;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$TranslationEntityCopyWithImpl<$Res, $Val extends TranslationEntity>
    implements $TranslationEntityCopyWith<$Res> {
  _$TranslationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$TranslationEntityImplCopyWith<$Res>
    implements $TranslationEntityCopyWith<$Res> {
  factory _$$TranslationEntityImplCopyWith(_$TranslationEntityImpl value,
          $Res Function(_$TranslationEntityImpl) then) =
      __$$TranslationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$$TranslationEntityImplCopyWithImpl<$Res>
    extends _$TranslationEntityCopyWithImpl<$Res, _$TranslationEntityImpl>
    implements _$$TranslationEntityImplCopyWith<$Res> {
  __$$TranslationEntityImplCopyWithImpl(_$TranslationEntityImpl _value,
      $Res Function(_$TranslationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$TranslationEntityImpl(
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

class _$TranslationEntityImpl implements _TranslationEntity {
  const _$TranslationEntityImpl({required this.en, required this.id});

  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'TranslationEntity(en: $en, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationEntityImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationEntityImplCopyWith<_$TranslationEntityImpl> get copyWith =>
      __$$TranslationEntityImplCopyWithImpl<_$TranslationEntityImpl>(
          this, _$identity);
}

abstract class _TranslationEntity implements TranslationEntity {
  const factory _TranslationEntity(
      {required final String en,
      required final String id}) = _$TranslationEntityImpl;

  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TranslationEntityImplCopyWith<_$TranslationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
