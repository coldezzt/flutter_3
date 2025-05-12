import 'package:freezed_annotation/freezed_annotation.dart';

part 'img.freezed.dart';
part 'img.g.dart';

@freezed
abstract class Img with _$Img {
  const factory Img({required String url}) = _Img;

  factory Img.fromJson(Map<String, dynamic> json) => _$ImgFromJson(json);
}