import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_photo_gallery/core/network_checker/network_checker.dart';
import 'package:http/http.dart' as http;
import 'package:simple_photo_gallery/features/photo_listing/domain/usecases/fetch_photos.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/photo_listing/data/datasources/local_data_sorce.dart';
import 'features/photo_listing/data/datasources/remote_data_source.dart';
import 'features/photo_listing/data/repository/repository_impl.dart';
import 'features/photo_listing/domain/repository/repository.dart';
import 'features/photo_listing/presentation/notifier/photo_listing_notifier.dart';

final networkCheckerProvider = Provider<NetworkChecker>((ref) {
  return NetworkICheckerImpl();
});

final httpClientProvider = Provider<http.Client>((ref) {
  return http.Client();
});

final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final localDataSourceProvider = Provider<LocalDataSource>((ref) {
  final sharedPref = ref.watch(sharedPreferencesProvider);
  return LocalDataSourceImpl(sharedPreferences: sharedPref);
});

final remoteDataSourceProvider = Provider<RemoteDataSource>((ref) {
  return RemoteDataSourceImpl(
    client: ref.watch(httpClientProvider),
  );
});

final repositoryProvider = Provider<Repository>((ref) {
  return RepositoryImpl(
    localDataSource: ref.watch(localDataSourceProvider),
    networkChecker: ref.watch(networkCheckerProvider),
    remoteDataSource: ref.watch(remoteDataSourceProvider),
  );
});

// Usecases
final fetchPhotosUsecaseProvider = Provider<FetchPhotos>((ref) {
  return FetchPhotos(repository: ref.watch(repositoryProvider));
});

// Notifiers
final photoListingNotifierProvider =
    StateNotifierProvider.autoDispose<PhotoListingNotifier, PhotoListingState>(
  (ref) => PhotoListingNotifier(
    fetchPhotos: ref.watch(fetchPhotosUsecaseProvider),
  ),
);
