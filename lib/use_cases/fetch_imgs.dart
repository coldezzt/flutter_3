import '../repositories/img_repository.dart';

class FetchImgsUseCase {
  final ImgRepository repository;
  FetchImgsUseCase(this.repository);
  Future<List<String>> execute(int page, int limit) => repository.fetchImages(page, limit);
}