import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_photo_gallery/features/photo_listing/presentation/pages/photo_listing_screen.dart';

import 'package:flutter/services.dart' as services;

import 'dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  services.SystemChrome.setPreferredOrientations([
    services.DeviceOrientation.portraitUp,
  ]);
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(
        sharedPreferences,
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PhotoListingScreen(),
    );
  }
}
