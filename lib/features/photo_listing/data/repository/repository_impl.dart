import 'dart:convert';

import 'package:simple_photo_gallery/core/utils/date_converter.dart';
import 'package:simple_photo_gallery/core/error/exceptions.dart';
import 'package:simple_photo_gallery/core/network_checker/network_checker.dart';
import 'package:simple_photo_gallery/core/utils/size_converter.dart';
import 'package:simple_photo_gallery/features/photo_listing/data/datasources/local_data_sorce.dart';
import 'package:simple_photo_gallery/features/photo_listing/data/datasources/remote_data_source.dart';
import 'package:simple_photo_gallery/features/photo_listing/data/models/media_model.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/entities/photo_entity.dart';
import 'package:simple_photo_gallery/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_photo_gallery/features/photo_listing/domain/repository/repository.dart';

class RepositoryImpl implements Repository {
  final NetworkChecker networkChecker;
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  RepositoryImpl({
    required this.networkChecker,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  Future<bool> _isCachedDataValid() async {
    final cachedLastAPICall = await localDataSource.getLastCallDateTime();

    final cachedLastAPICallDateTime = DateConverter.getDateFrom(
        date: cachedLastAPICall, formatter: "yyyy/MM/dd HH:mm");

    final isCachedDataExpired =
        DateConverter.isDateTimeExpired(dateTime: cachedLastAPICallDateTime);
    return !isCachedDataExpired;
  }

  Future<List<MediaModel>?> _loadCachedData() async {
    final cachedPhotos = await localDataSource.getPhotos();
    if (cachedPhotos?.isEmpty ?? true) {
      return null;
    }

    final cachedJsonPhotos = json.decode(cachedPhotos!);
    final List<MediaModel> photos = cachedJsonPhotos
        .map<MediaModel>((data) => MediaModel.fromJson(data))
        .toList();
    return photos;
  }

  List<PhotoEntity>? _convertMediModelToPhotoEntity(
      List<MediaModel>? mediaList) {
    if (mediaList?.isEmpty ?? true) {
      return null;
    }
    final photoEntities = mediaList!
        .map<PhotoEntity>(
          (mediaModel) => PhotoEntity(
            mediaId: mediaModel.id ?? "",
            thumbnailUrl: "${mediaModel.thumbnailUrl ?? ""}?w=80&h=80&m=md",
            originalPhotoUrl: mediaModel.thumbnailUrl ?? "",
            createdAt: DateConverter.convertDateToString(
                date: DateConverter.getDateFrom(
                    date: mediaModel.createdAt,
                    formatter: "yyyy-MM-ddTHH:mm:ssZ"),
                formatter: "yyyy/MM/dd HH:mm"),
            photoSize: SizeConverter.formatBytes(mediaModel.size ?? 0, 2),
          ),
        )
        .toList();
    return photoEntities;
  }

  String _convertMediaModelListToString(List<MediaModel> result) {
    final jsonMediaModel =
        result.map<Map<String, dynamic>>((e) => e.toJson()).toList();
    final convertedJsonList = json.encode(jsonMediaModel);
    return convertedJsonList;
  }

  @override
  Future<Either<Failure, List<PhotoEntity>>> fetchPhotos() async {
    // There 3 scenarios :
    // 1- Cache expired / First time calling the api => api
    // 2- Internet is not accessible => api
    // 3- cache is valid

    // First: check id the cache is valid
    final isCacheValid = await _isCachedDataValid();

    //Second: if the chache is valid we load the cached data
    //else we call the API
    if (isCacheValid) {
      try {
        final cachedPhotos = await _loadCachedData();
        final entities = _convertMediModelToPhotoEntity(cachedPhotos);
        return right(entities ?? const <PhotoEntity>[]);
      } on CacheException catch (e) {
        return left(CacheFailure(message: e.message));
      }
    } else {
      if (await networkChecker.isConnected()) {
        try {
          // Load from Server
          final result = await remoteDataSource.fetchPhotos();

          if (result?.isEmpty ?? true) {
            right(const <PhotoEntity>[]);
          }

          final entities = _convertMediModelToPhotoEntity(result);
          // Refresh the cache
          final formattedPhotos = _convertMediaModelListToString(result!);
          await localDataSource.cachePhotos(formattedPhotos);

          // RefreshLastCall
          final formattedLastCall = DateConverter.convertDateToString(
              date: DateTime.now(), formatter: "yyyy/MM/dd HH:mm");
          await localDataSource.cacheLastCallDateTime(formattedLastCall);

          return right(entities ?? const <PhotoEntity>[]);
        } on ServerException catch (e) {
          return left(ServerFailure(message: e.message, code: e.code));
        } on CacheException catch (e) {
          return left(CacheFailure(message: e.message));
        } catch (e) {
          return left(OperationFailure(message: e.toString()));
        }
      } else {
        // whatever that is cached will be presented to user
        try {
          final cachedPhotos = await _loadCachedData();
          final entities = _convertMediModelToPhotoEntity(cachedPhotos);
          return right(entities ?? const <PhotoEntity>[]);
        } on CacheException catch (e) {
          return left(CacheFailure(message: e.message));
        }
      }
    }
  }
}
