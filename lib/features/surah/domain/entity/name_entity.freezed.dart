// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NameEntity {
  String get short => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  TranslationEntity get transliteration => throw _privateConstructorUsedError;
  TranslationEntity get translation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameEntityCopyWith<NameEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameEntityCopyWith<$Res> {
  factory $NameEntityCopyWith(
          NameEntity value, $Res Function(NameEntity) then) =
      _$NameEntityCopyWithImpl<$Res, NameEntity>;
  @useResult
  $Res call(
      {String short,
      String long,
      TranslationEntity transliteration,
      TranslationEntity translation});

  $TranslationEntityCopyWith<$Res> get transliteration;
  $TranslationEntityCopyWith<$Res> get translation;
}

/// @nodoc
class _$NameEntityCopyWithImpl<$Res, $Val extends NameEntity>
    implements $NameEntityCopyWith<$Res> {
  _$NameEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_value.copyWith(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationEntity,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationEntityCopyWith<$Res> get transliteration {
    return $TranslationEntityCopyWith<$Res>(_value.transliteration, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationEntityCopyWith<$Res> get translation {
    return $TranslationEntityCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NameEntityImplCopyWith<$Res>
    implements $NameEntityCopyWith<$Res> {
  factory _$$NameEntityImplCopyWith(
          _$NameEntityImpl value, $Res Function(_$NameEntityImpl) then) =
      __$$NameEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String short,
      String long,
      TranslationEntity transliteration,
      TranslationEntity translation});

  @override
  $TranslationEntityCopyWith<$Res> get transliteration;
  @override
  $TranslationEntityCopyWith<$Res> get translation;
}

/// @nodoc
class __$$NameEntityImplCopyWithImpl<$Res>
    extends _$NameEntityCopyWithImpl<$Res, _$NameEntityImpl>
    implements _$$NameEntityImplCopyWith<$Res> {
  __$$NameEntityImplCopyWithImpl(
      _$NameEntityImpl _value, $Res Function(_$NameEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_$NameEntityImpl(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as TranslationEntity,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as TranslationEntity,
    ));
  }
}

/// @nodoc

class _$NameEntityImpl implements _NameEntity {
  const _$NameEntityImpl(
      {required this.short,
      required this.long,
      required this.transliteration,
      required this.translation});

  @override
  final String short;
  @override
  final String long;
  @override
  final TranslationEntity transliteration;
  @override
  final TranslationEntity translation;

  @override
  String toString() {
    return 'NameEntity(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameEntityImpl &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameEntityImplCopyWith<_$NameEntityImpl> get copyWith =>
      __$$NameEntityImplCopyWithImpl<_$NameEntityImpl>(this, _$identity);
}

abstract class _NameEntity implements NameEntity {
  const factory _NameEntity(
      {required final String short,
      required final String long,
      required final TranslationEntity transliteration,
      required final TranslationEntity translation}) = _$NameEntityImpl;

  @override
  String get short;
  @override
  String get long;
  @override
  TranslationEntity get transliteration;
  @override
  TranslationEntity get translation;
  @override
  @JsonKey(ignore: true)
  _$$NameEntityImplCopyWith<_$NameEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
