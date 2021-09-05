import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_photo_gallery/dependency_injection.dart';
import 'package:simple_photo_gallery/features/photo_listing/presentation/notifier/photo_listing_notifier.dart';
import 'package:simple_photo_gallery/features/photo_listing/presentation/widgets/photos_widget.dart';

class PhotoListingScreen extends StatelessWidget {
  const PhotoListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Album Photos"),
      ),
      body: ProviderListener(
        provider: photoListingNotifierProvider,
        onChange: (context, PhotoListingState state) {
          if (state.isFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure?.message ?? ""),
              ),
            );
          }
        },
        child: Consumer(builder: (context, watch, child) {
          final _state = watch(photoListingNotifierProvider);
          if (_state.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          }
          if (_state.items.isEmpty) {
            return Center(child: Text("No Item found in your album"));
          } else {
            return PhotosWidget(items: _state.items);
          }
        }),
      ),
    );
  }
}
