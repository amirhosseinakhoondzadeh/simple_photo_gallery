import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_photo_gallery/core/constants/urls.dart';
import 'package:simple_photo_gallery/core/error/exceptions.dart';
import 'package:simple_photo_gallery/features/photo_listing/data/models/media_model.dart';

abstract class RemoteDataSource {
  Future<List<MediaModel>?> fetchPhotos();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<MediaModel>?> fetchPhotos() async {
    final url = Uri.parse("$base_url$photos_url");
    debugPrint("url is : $url");
    try {
      final response = await client.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);

        debugPrint(jsonResponse.toString());

        final result = jsonResponse
            .map<MediaModel>((data) => MediaModel.fromJson(data))
            .toList();

        return result;
      } else {
        print("response");

        throw ServerException(
            code: response.statusCode, message: response.body);
      }
    } on FormatException catch (error) {
      throw ServerException(
        code: 0,
        message: error.message,
      );
    }
  }
}
