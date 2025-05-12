import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dotnet_cw/models/img.dart';

part 'img_state.freezed.dart';

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