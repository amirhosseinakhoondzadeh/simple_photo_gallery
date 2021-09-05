import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';

class PhotoGridIteWidget extends StatelessWidget {
  final PhotoEntity item;
  final VoidCallback onTapped;
  const PhotoGridIteWidget(
      {Key? key, required this.item, required this.onTapped})
      : super(key: key);

  Widget get imageWidget => CachedNetworkImage(
        imageUrl: item.thumbnailUrl,
        placeholder: (context, _) => Container(
          color: Colors.grey[200],
        ),
        errorWidget: (context, str, _) => Container(
          child: Center(
            child: Icon(Icons.error),
          ),
        ),
        fadeInDuration: const Duration(milliseconds: 400),
        fit: BoxFit.cover,
      );

  Widget get sizeWidget => Opacity(
        opacity: 0.6,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          color: Colors.black,
          child: Center(
            child: Text(item.photoSize,
                style: const TextStyle(color: Colors.white)),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Hero(tag: item.mediaId, child: imageWidget),
          Positioned(
            child: sizeWidget,
            bottom: 0,
            right: 0,
            left: 0,
          )
        ],
      ),
    );
  }
}
