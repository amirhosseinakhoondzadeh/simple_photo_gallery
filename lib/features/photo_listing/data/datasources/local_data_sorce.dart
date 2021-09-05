import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_photo_gallery/core/constants/keys.dart';
import 'package:simple_photo_gallery/core/error/exceptions.dart';

abstract class LocalDataSource {
  Future<void> cachePhotos(String photos);
  Future<String?> getPhotos();
  Future<void> cacheLastCallDateTime(String dateTime);
  Future<String?> getLastCallDateTime();
}

class LocalDataSourceImpl implements LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cachePhotos(String photos) {
    return sharedPreferences.setString(pref_photos, photos);
  }

  @override
  Future<String?> getPhotos() {
    try {
      final photos = sharedPreferences.getString(pref_photos);
      return Future.value(photos);
    } catch (error) {
      throw CacheException(message: error.toString());
    }
  }

  @override
  Future<void> cacheLastCallDateTime(String dateTime) {
    return sharedPreferences.setString(pref_last_call, dateTime);
  }

  @override
  Future<String?> getLastCallDateTime() {
    try {
      final lastCallDateTime = sharedPreferences.getString(pref_last_call);
      return Future.value(lastCallDateTime);
    } catch (error) {
      throw CacheException(message: error.toString());
    }
  }
}
