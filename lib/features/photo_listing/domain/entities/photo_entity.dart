class PhotoEntity {
  final String mediaId;
  final String thumbnailUrl;
  final String originalPhotoUrl;
  final String createdAt;
  final String photoSize;

  PhotoEntity({
    required this.mediaId,
    required this.thumbnailUrl,
    required this.originalPhotoUrl,
    required this.createdAt,
    required this.photoSize,
  });
}
