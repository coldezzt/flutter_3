part of 'img_bloc.dart';

@freezed
class ImgState with _$ImgState {
  const factory ImgState.normal({
    Img? data1,
    @Default(false) bool isLoading1,
    @Default(<String>[]) List<String> data2,
    @Default(false) bool isLoading2,
  }) = _Normal;

  const factory ImgState.loading() = _Loading;

  const factory ImgState.error(String message) = _Error;
}