import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
abstract class MediaModel with _$MediaModel {
  const factory MediaModel({
    String? id,
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
    int? resy,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
