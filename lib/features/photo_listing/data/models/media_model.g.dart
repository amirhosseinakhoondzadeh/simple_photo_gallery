// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaModel _$_$_MediaModelFromJson(Map<String, dynamic> json) {
  return _$_MediaModel(
    id: json['id'] as String?,
    userId: json['user_id'] as String?,
    mediaType: json['media_type'] as String?,
    filename: json['filename'] as String?,
    size: json['size'] as int?,
    createdAt: json['created_at'] as String?,
    takenAt: json['taken_at'] as String?,
    guessedTakenAt: json['guessed_taken_at'] as String?,
    md5Sum: json['md5Sum'] as String?,
    contentType: json['content_type'] as String?,
    video: json['video'] as String?,
    thumbnailUrl: json['thumbnail_url'] as String?,
    downloadUrl: json['download_url'] as String?,
    resx: json['resx'] as int?,
    resy: json['resy'] as int?,
  );
}

Map<String, dynamic> _$_$_MediaModelToJson(_$_MediaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'media_type': instance.mediaType,
      'filename': instance.filename,
      'size': instance.size,
      'created_at': instance.createdAt,
      'taken_at': instance.takenAt,
      'guessed_taken_at': instance.guessedTakenAt,
      'md5Sum': instance.md5Sum,
      'content_type': instance.contentType,
      'video': instance.video,
      'thumbnail_url': instance.thumbnailUrl,
      'download_url': instance.downloadUrl,
      'resx': instance.resx,
      'resy': instance.resy,
    };
