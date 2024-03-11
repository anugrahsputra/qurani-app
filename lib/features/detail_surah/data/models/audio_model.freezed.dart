// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioFileModel _$AudioFileModelFromJson(Map<String, dynamic> json) {
  return _AudioFileModel.fromJson(json);
}

/// @nodoc
mixin _$AudioFileModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter_id")
  int get chapterId => throw _privateConstructorUsedError;
  @JsonKey(name: "file_size")
  double get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: "format")
  String get format => throw _privateConstructorUsedError;
  @JsonKey(name: "audio_url")
  String get audioUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioFileModelCopyWith<AudioFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioFileModelCopyWith<$Res> {
  factory $AudioFileModelCopyWith(
          AudioFileModel value, $Res Function(AudioFileModel) then) =
      _$AudioFileModelCopyWithImpl<$Res, AudioFileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "chapter_id") int chapterId,
      @JsonKey(name: "file_size") double fileSize,
      @JsonKey(name: "format") String format,
      @JsonKey(name: "audio_url") String audioUrl});
}

/// @nodoc
class _$AudioFileModelCopyWithImpl<$Res, $Val extends AudioFileModel>
    implements $AudioFileModelCopyWith<$Res> {
  _$AudioFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? fileSize = null,
    Object? format = null,
    Object? audioUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioFileModelImplCopyWith<$Res>
    implements $AudioFileModelCopyWith<$Res> {
  factory _$$AudioFileModelImplCopyWith(_$AudioFileModelImpl value,
          $Res Function(_$AudioFileModelImpl) then) =
      __$$AudioFileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "chapter_id") int chapterId,
      @JsonKey(name: "file_size") double fileSize,
      @JsonKey(name: "format") String format,
      @JsonKey(name: "audio_url") String audioUrl});
}

/// @nodoc
class __$$AudioFileModelImplCopyWithImpl<$Res>
    extends _$AudioFileModelCopyWithImpl<$Res, _$AudioFileModelImpl>
    implements _$$AudioFileModelImplCopyWith<$Res> {
  __$$AudioFileModelImplCopyWithImpl(
      _$AudioFileModelImpl _value, $Res Function(_$AudioFileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chapterId = null,
    Object? fileSize = null,
    Object? format = null,
    Object? audioUrl = null,
  }) {
    return _then(_$AudioFileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chapterId: null == chapterId
          ? _value.chapterId
          : chapterId // ignore: cast_nullable_to_non_nullable
              as int,
      fileSize: null == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as double,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioFileModelImpl implements _AudioFileModel {
  const _$AudioFileModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "chapter_id") required this.chapterId,
      @JsonKey(name: "file_size") required this.fileSize,
      @JsonKey(name: "format") required this.format,
      @JsonKey(name: "audio_url") required this.audioUrl});

  factory _$AudioFileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioFileModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "chapter_id")
  final int chapterId;
  @override
  @JsonKey(name: "file_size")
  final double fileSize;
  @override
  @JsonKey(name: "format")
  final String format;
  @override
  @JsonKey(name: "audio_url")
  final String audioUrl;

  @override
  String toString() {
    return 'AudioFileModel(id: $id, chapterId: $chapterId, fileSize: $fileSize, format: $format, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioFileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chapterId, chapterId) ||
                other.chapterId == chapterId) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, chapterId, fileSize, format, audioUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioFileModelImplCopyWith<_$AudioFileModelImpl> get copyWith =>
      __$$AudioFileModelImplCopyWithImpl<_$AudioFileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioFileModelImplToJson(
      this,
    );
  }
}

abstract class _AudioFileModel implements AudioFileModel {
  const factory _AudioFileModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "chapter_id") required final int chapterId,
          @JsonKey(name: "file_size") required final double fileSize,
          @JsonKey(name: "format") required final String format,
          @JsonKey(name: "audio_url") required final String audioUrl}) =
      _$AudioFileModelImpl;

  factory _AudioFileModel.fromJson(Map<String, dynamic> json) =
      _$AudioFileModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "chapter_id")
  int get chapterId;
  @override
  @JsonKey(name: "file_size")
  double get fileSize;
  @override
  @JsonKey(name: "format")
  String get format;
  @override
  @JsonKey(name: "audio_url")
  String get audioUrl;
  @override
  @JsonKey(ignore: true)
  _$$AudioFileModelImplCopyWith<_$AudioFileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
