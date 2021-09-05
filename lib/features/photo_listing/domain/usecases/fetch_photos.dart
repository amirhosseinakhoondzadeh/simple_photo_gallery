import 'package:simple_photo_gallery/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_photo_gallery/core/usecases/usecase.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/repository/repository.dart';

class FetchPhotos extends UseCase<List<PhotoEntity>, NoParams> {
  final Repository _repository;

  FetchPhotos({required Repository repository}) : _repository = repository;

  @override
  Future<Either<Failure, List<PhotoEntity>>> call(NoParams params) {
    return _repository.fetchPhotos();
  }
}
