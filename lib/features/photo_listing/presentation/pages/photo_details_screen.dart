import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';

class PhotoDetailsScreen extends StatelessWidget {
  final PhotoEntity item;

  const PhotoDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.createdAt),
      ),
      body: Hero(
        tag: item.mediaId,
        child: CachedNetworkImage(
          imageUrl: item.originalPhotoUrl,
          placeholder: (context, _) => Container(
            color: Colors.grey[500],
          ),
          errorWidget: (context, str, _) => Container(
            child: Center(
              child: Icon(Icons.error),
            ),
          ),
          fadeInDuration: const Duration(milliseconds: 400),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
