// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'img.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Img {

 String get url;
/// Create a copy of Img
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImgCopyWith<Img> get copyWith => _$ImgCopyWithImpl<Img>(this as Img, _$identity);

  /// Serializes this Img to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Img&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'Img(url: $url)';
}


}

/// @nodoc
abstract mixin class $ImgCopyWith<$Res>  {
  factory $ImgCopyWith(Img value, $Res Function(Img) _then) = _$ImgCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$ImgCopyWithImpl<$Res>
    implements $ImgCopyWith<$Res> {
  _$ImgCopyWithImpl(this._self, this._then);

  final Img _self;
  final $Res Function(Img) _then;

/// Create a copy of Img
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Img implements Img {
  const _Img({required this.url});
  factory _Img.fromJson(Map<String, dynamic> json) => _$ImgFromJson(json);

@override final  String url;

/// Create a copy of Img
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImgCopyWith<_Img> get copyWith => __$ImgCopyWithImpl<_Img>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImgToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Img&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'Img(url: $url)';
}


}

/// @nodoc
abstract mixin class _$ImgCopyWith<$Res> implements $ImgCopyWith<$Res> {
  factory _$ImgCopyWith(_Img value, $Res Function(_Img) _then) = __$ImgCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$ImgCopyWithImpl<$Res>
    implements _$ImgCopyWith<$Res> {
  __$ImgCopyWithImpl(this._self, this._then);

  final _Img _self;
  final $Res Function(_Img) _then;

/// Create a copy of Img
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_Img(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
