import 'package:simple_photo_gallery/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';

abstract class Repository {
  Future<Either<Failure, List<PhotoEntity>>> fetchPhotos();
}
