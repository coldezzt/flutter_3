part of 'img_bloc.dart';

@freezed
class ImgEvent with _$ImgEvent {
  const factory ImgEvent.initialize() = Initialize;
  const factory ImgEvent.fetchImg() = FetchImg;
  const factory ImgEvent.fetchImgs({
    required int page,
    required int limit,
  }) = FetchImgs;
}