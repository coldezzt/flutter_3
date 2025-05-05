import 'package:dio/dio.dart';

import '../models/img.dart';

abstract class ImgRepository {
  Future<Img> fetchImage();

  Future<List<String>> fetchImages(int page, int limit);
}

class ImgRepositoryImpl implements ImgRepository {
  final Dio _dio;

  ImgRepositoryImpl() : _dio = Dio() {
    _dio.options
      ..baseUrl = 'https://api.api-ninjas.com'
      ..headers = <String, dynamic>{
        'X-Api-Key': 'sXnnIgsKz6EgPF/gcjEylw==NyndCfnkLmIoxljR',
      }
      ..connectTimeout = const Duration(seconds: 5);
  }

  @override
  Future<Img> fetchImage() async {
    try {
      final response = await _dio.get('/v1/randomimage');
      if (response.statusCode == 200) {
        return Img(url: response.data);
      } else {
        throw Exception('Failed to load image: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load image: $e');
    }
  }

  @override
  Future<List<String>> fetchImages(int page, int limit) async {
    try {
      List<String> imgUrls = [];
      for (int i = 0; i < limit; i++) {
        final response = await _dio.get('v1/randomimage');
        if (response.statusCode == 200) {
          imgUrls.add(response.data);
        } else {
          throw Exception('Failed to load image: ${response.statusCode}');
        }
      }
      return imgUrls;
    } catch (e) {
      throw Exception('Failed to load imagess: $e');
    }
  }
}
