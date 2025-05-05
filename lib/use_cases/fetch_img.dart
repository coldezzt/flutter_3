import '../models/img.dart';
import '../repositories/img_repository.dart';

class FetchImgUseCase {
  final ImgRepository repository;
  FetchImgUseCase(this.repository);
  Future<Img> execute() => repository.fetchImage();
}
