import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_photo_gallery/core/error/failures.dart';
import 'package:simple_photo_gallery/core/usecases/usecase.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/usecases/fetch_photos.dart';

part 'photo_listing_notifier.freezed.dart';

@freezed
abstract class PhotoListingState with _$PhotoListingState {
  const factory PhotoListingState({
    @Default(false) bool isLoading,
    @Default(false) bool isFailure,
    Failure? failure,
    @Default(const <PhotoEntity>[]) List<PhotoEntity> items,
  }) = _PhotoListingState;

  factory PhotoListingState.failure({
    required Failure failure,
  }) =>
      PhotoListingState(
        isFailure: true,
        failure: failure,
      );

  factory PhotoListingState.loading() =>
      const PhotoListingState(isLoading: true);

  factory PhotoListingState.loaded({
    required List<PhotoEntity> items,
  }) =>
      PhotoListingState(items: items);
}

class PhotoListingNotifier extends StateNotifier<PhotoListingState> {
  final FetchPhotos _fetchPhotos;

  PhotoListingNotifier({required FetchPhotos fetchPhotos})
      : _fetchPhotos = fetchPhotos,
        super(PhotoListingState()) {
    if (mounted) {
      _loadPhotos();
    }
  }

  Future<void> _loadPhotos() async {
    state = PhotoListingState.loading();
    final result = await _fetchPhotos.call(NoParams());
    result.fold(
      (failure) => state = PhotoListingState.failure(failure: failure),
      (items) => state = PhotoListingState.loaded(items: items),
    );
  }
}
