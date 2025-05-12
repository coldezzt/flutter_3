// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'img_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImgEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImgEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImgEvent()';
}


}

/// @nodoc
class $ImgEventCopyWith<$Res>  {
$ImgEventCopyWith(ImgEvent _, $Res Function(ImgEvent) __);
}


/// @nodoc


class Initialize implements ImgEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImgEvent.initialize()';
}


}




/// @nodoc


class FetchImg implements ImgEvent {
  const FetchImg();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchImg);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImgEvent.fetchImg()';
}


}




/// @nodoc


class FetchImgs implements ImgEvent {
  const FetchImgs({required this.page, required this.limit});
  

 final  int page;
 final  int limit;

/// Create a copy of ImgEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchImgsCopyWith<FetchImgs> get copyWith => _$FetchImgsCopyWithImpl<FetchImgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchImgs&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'ImgEvent.fetchImgs(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $FetchImgsCopyWith<$Res> implements $ImgEventCopyWith<$Res> {
  factory $FetchImgsCopyWith(FetchImgs value, $Res Function(FetchImgs) _then) = _$FetchImgsCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$FetchImgsCopyWithImpl<$Res>
    implements $FetchImgsCopyWith<$Res> {
  _$FetchImgsCopyWithImpl(this._self, this._then);

  final FetchImgs _self;
  final $Res Function(FetchImgs) _then;

/// Create a copy of ImgEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(FetchImgs(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
