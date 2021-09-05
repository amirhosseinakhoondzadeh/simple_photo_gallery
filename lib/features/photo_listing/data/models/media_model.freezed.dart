// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) {
  return _MediaModel.fromJson(json);
}

/// @nodoc
class _$MediaModelTearOff {
  const _$MediaModelTearOff();

  _MediaModel call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "media_type") String? mediaType,
      String? filename,
      int? size,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "taken_at") String? takenAt,
      @JsonKey(name: "guessed_taken_at") String? guessedTakenAt,
      String? md5Sum,
      @JsonKey(name: "content_type") String? contentType,
      String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "download_url") String? downloadUrl,
      int? resx,
      int? resy}) {
    return _MediaModel(
      id: id,
      userId: userId,
      mediaType: mediaType,
      filename: filename,
      size: size,
      createdAt: createdAt,
      takenAt: takenAt,
      guessedTakenAt: guessedTakenAt,
      md5Sum: md5Sum,
      contentType: contentType,
      video: video,
      thumbnailUrl: thumbnailUrl,
      downloadUrl: downloadUrl,
      resx: resx,
      resy: resy,
    );
  }

  MediaModel fromJson(Map<String, Object> json) {
    return MediaModel.fromJson(json);
  }
}

/// @nodoc
const $MediaModel = _$MediaModelTearOff();

/// @nodoc
mixin _$MediaModel {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "taken_at")
  String? get takenAt => throw _privateConstructorUsedError;
  @JsonKey(name: "guessed_taken_at")
  String? get guessedTakenAt => throw _privateConstructorUsedError;
  String? get md5Sum => throw _privateConstructorUsedError;
  @JsonKey(name: "content_type")
  String? get contentType => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "download_url")
  String? get downloadUrl => throw _privateConstructorUsedError;
  int? get resx => throw _privateConstructorUsedError;
  int? get resy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaModelCopyWith<MediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaModelCopyWith<$Res> {
  factory $MediaModelCopyWith(
          MediaModel value, $Res Function(MediaModel) then) =
      _$MediaModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "media_type") String? mediaType,
      String? filename,
      int? size,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "taken_at") String? takenAt,
      @JsonKey(name: "guessed_taken_at") String? guessedTakenAt,
      String? md5Sum,
      @JsonKey(name: "content_type") String? contentType,
      String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "download_url") String? downloadUrl,
      int? resx,
      int? resy});
}

/// @nodoc
class _$MediaModelCopyWithImpl<$Res> implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._value, this._then);

  final MediaModel _value;
  // ignore: unused_field
  final $Res Function(MediaModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? mediaType = freezed,
    Object? filename = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? takenAt = freezed,
    Object? guessedTakenAt = freezed,
    Object? md5Sum = freezed,
    Object? contentType = freezed,
    Object? video = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
    Object? resx = freezed,
    Object? resy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      takenAt: takenAt == freezed
          ? _value.takenAt
          : takenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      guessedTakenAt: guessedTakenAt == freezed
          ? _value.guessedTakenAt
          : guessedTakenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      md5Sum: md5Sum == freezed
          ? _value.md5Sum
          : md5Sum // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      resx: resx == freezed
          ? _value.resx
          : resx // ignore: cast_nullable_to_non_nullable
              as int?,
      resy: resy == freezed
          ? _value.resy
          : resy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MediaModelCopyWith<$Res> implements $MediaModelCopyWith<$Res> {
  factory _$MediaModelCopyWith(
          _MediaModel value, $Res Function(_MediaModel) then) =
      __$MediaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "media_type") String? mediaType,
      String? filename,
      int? size,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "taken_at") String? takenAt,
      @JsonKey(name: "guessed_taken_at") String? guessedTakenAt,
      String? md5Sum,
      @JsonKey(name: "content_type") String? contentType,
      String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "download_url") String? downloadUrl,
      int? resx,
      int? resy});
}

/// @nodoc
class __$MediaModelCopyWithImpl<$Res> extends _$MediaModelCopyWithImpl<$Res>
    implements _$MediaModelCopyWith<$Res> {
  __$MediaModelCopyWithImpl(
      _MediaModel _value, $Res Function(_MediaModel) _then)
      : super(_value, (v) => _then(v as _MediaModel));

  @override
  _MediaModel get _value => super._value as _MediaModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? mediaType = freezed,
    Object? filename = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? takenAt = freezed,
    Object? guessedTakenAt = freezed,
    Object? md5Sum = freezed,
    Object? contentType = freezed,
    Object? video = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
    Object? resx = freezed,
    Object? resy = freezed,
  }) {
    return _then(_MediaModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      takenAt: takenAt == freezed
          ? _value.takenAt
          : takenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      guessedTakenAt: guessedTakenAt == freezed
          ? _value.guessedTakenAt
          : guessedTakenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      md5Sum: md5Sum == freezed
          ? _value.md5Sum
          : md5Sum // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      resx: resx == freezed
          ? _value.resx
          : resx // ignore: cast_nullable_to_non_nullable
              as int?,
      resy: resy == freezed
          ? _value.resy
          : resy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaModel implements _MediaModel {
  const _$_MediaModel(
      {this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "media_type") this.mediaType,
      this.filename,
      this.size,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "taken_at") this.takenAt,
      @JsonKey(name: "guessed_taken_at") this.guessedTakenAt,
      this.md5Sum,
      @JsonKey(name: "content_type") this.contentType,
      this.video,
      @JsonKey(name: "thumbnail_url") this.thumbnailUrl,
      @JsonKey(name: "download_url") this.downloadUrl,
      this.resx,
      this.resy});

  factory _$_MediaModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MediaModelFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "media_type")
  final String? mediaType;
  @override
  final String? filename;
  @override
  final int? size;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "taken_at")
  final String? takenAt;
  @override
  @JsonKey(name: "guessed_taken_at")
  final String? guessedTakenAt;
  @override
  final String? md5Sum;
  @override
  @JsonKey(name: "content_type")
  final String? contentType;
  @override
  final String? video;
  @override
  @JsonKey(name: "thumbnail_url")
  final String? thumbnailUrl;
  @override
  @JsonKey(name: "download_url")
  final String? downloadUrl;
  @override
  final int? resx;
  @override
  final int? resy;

  @override
  String toString() {
    return 'MediaModel(id: $id, userId: $userId, mediaType: $mediaType, filename: $filename, size: $size, createdAt: $createdAt, takenAt: $takenAt, guessedTakenAt: $guessedTakenAt, md5Sum: $md5Sum, contentType: $contentType, video: $video, thumbnailUrl: $thumbnailUrl, downloadUrl: $downloadUrl, resx: $resx, resy: $resy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediaModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.mediaType, mediaType) ||
                const DeepCollectionEquality()
                    .equals(other.mediaType, mediaType)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.takenAt, takenAt) ||
                const DeepCollectionEquality()
                    .equals(other.takenAt, takenAt)) &&
            (identical(other.guessedTakenAt, guessedTakenAt) ||
                const DeepCollectionEquality()
                    .equals(other.guessedTakenAt, guessedTakenAt)) &&
            (identical(other.md5Sum, md5Sum) ||
                const DeepCollectionEquality().equals(other.md5Sum, md5Sum)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.downloadUrl, downloadUrl) ||
                const DeepCollectionEquality()
                    .equals(other.downloadUrl, downloadUrl)) &&
            (identical(other.resx, resx) ||
                const DeepCollectionEquality().equals(other.resx, resx)) &&
            (identical(other.resy, resy) ||
                const DeepCollectionEquality().equals(other.resy, resy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(mediaType) ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(takenAt) ^
      const DeepCollectionEquality().hash(guessedTakenAt) ^
      const DeepCollectionEquality().hash(md5Sum) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(downloadUrl) ^
      const DeepCollectionEquality().hash(resx) ^
      const DeepCollectionEquality().hash(resy);

  @JsonKey(ignore: true)
  @override
  _$MediaModelCopyWith<_MediaModel> get copyWith =>
      __$MediaModelCopyWithImpl<_MediaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediaModelToJson(this);
  }
}

abstract class _MediaModel implements MediaModel {
  const factory _MediaModel(
      {String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "media_type") String? mediaType,
      String? filename,
      int? size,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "taken_at") String? takenAt,
      @JsonKey(name: "guessed_taken_at") String? guessedTakenAt,
      String? md5Sum,
      @JsonKey(name: "content_type") String? contentType,
      String? video,
      @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
      @JsonKey(name: "download_url") String? downloadUrl,
      int? resx,
      int? resy}) = _$_MediaModel;

  factory _MediaModel.fromJson(Map<String, dynamic> json) =
      _$_MediaModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;
  @override
  String? get filename => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "taken_at")
  String? get takenAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "guessed_taken_at")
  String? get guessedTakenAt => throw _privateConstructorUsedError;
  @override
  String? get md5Sum => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "content_type")
  String? get contentType => throw _privateConstructorUsedError;
  @override
  String? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "download_url")
  String? get downloadUrl => throw _privateConstructorUsedError;
  @override
  int? get resx => throw _privateConstructorUsedError;
  @override
  int? get resy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MediaModelCopyWith<_MediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
