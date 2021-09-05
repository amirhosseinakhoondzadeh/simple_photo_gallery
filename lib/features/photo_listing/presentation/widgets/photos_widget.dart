import 'package:flutter/material.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';
import 'package:simple_photo_gallery/features/photo_listing/presentation/pages/photo_Details_screen.dart';
import 'package:simple_photo_gallery/features/photo_listing/presentation/widgets/photo_grid_item_widget.dart';

class PhotosWidget extends StatelessWidget {
  final List<PhotoEntity> items;

  const PhotosWidget({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return PhotoGridIteWidget(
            item: items[index],
            onTapped: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PhotoDetailsScreen(
                  item: items[index],
                ),
              ),
            ),
          );
        });
  }
}
