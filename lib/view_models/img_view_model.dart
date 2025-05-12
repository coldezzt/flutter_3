import 'package:flutter/material.dart';
import '../models/img.dart';
import '../use_cases/fetch_imgs.dart';
import '../use_cases/fetch_img.dart';

class ImgViewModel with ChangeNotifier {
  final FetchImgUseCase fetchImgUseCase;
  final FetchImgsUseCase fetchImgsUseCase;

  ImgViewModel({required this.fetchImgUseCase, required this.fetchImgsUseCase});

  Img? _imgImage;
  final List<String> _imgs = [];
  bool _isLoading = false;
  String? _error;

  Img? get imgImage => _imgImage;
  List<String> get imgs => _imgs;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchImage() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      _imgImage = await fetchImgUseCase.execute();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchImgs(int page, int limit) async {
    _isLoading = true;
    notifyListeners();
    try {
      final newImgs = await fetchImgsUseCase.execute(page, limit);
      _imgs.addAll(newImgs);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}