// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'img_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImgState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImgState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImgState()';
}


}

/// @nodoc
class $ImgStateCopyWith<$Res>  {
$ImgStateCopyWith(ImgState _, $Res Function(ImgState) __);
}


/// @nodoc


class _Normal implements ImgState {
  const _Normal({this.data1, this.isLoading1 = false, final  List<String> data2 = const <String>[], this.isLoading2 = false}): _data2 = data2;
  

 final  Img? data1;
@JsonKey() final  bool isLoading1;
 final  List<String> _data2;
@JsonKey() List<String> get data2 {
  if (_data2 is EqualUnmodifiableListView) return _data2;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data2);
}

@JsonKey() final  bool isLoading2;

/// Create a copy of ImgState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NormalCopyWith<_Normal> get copyWith => __$NormalCopyWithImpl<_Normal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Normal&&(identical(other.data1, data1) || other.data1 == data1)&&(identical(other.isLoading1, isLoading1) || other.isLoading1 == isLoading1)&&const DeepCollectionEquality().equals(other._data2, _data2)&&(identical(other.isLoading2, isLoading2) || other.isLoading2 == isLoading2));
}


@override
int get hashCode => Object.hash(runtimeType,data1,isLoading1,const DeepCollectionEquality().hash(_data2),isLoading2);

@override
String toString() {
  return 'ImgState.normal(data1: $data1, isLoading1: $isLoading1, data2: $data2, isLoading2: $isLoading2)';
}


}

/// @nodoc
abstract mixin class _$NormalCopyWith<$Res> implements $ImgStateCopyWith<$Res> {
  factory _$NormalCopyWith(_Normal value, $Res Function(_Normal) _then) = __$NormalCopyWithImpl;
@useResult
$Res call({
 Img? data1, bool isLoading1, List<String> data2, bool isLoading2
});


$ImgCopyWith<$Res>? get data1;

}
/// @nodoc
class __$NormalCopyWithImpl<$Res>
    implements _$NormalCopyWith<$Res> {
  __$NormalCopyWithImpl(this._self, this._then);

  final _Normal _self;
  final $Res Function(_Normal) _then;

/// Create a copy of ImgState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data1 = freezed,Object? isLoading1 = null,Object? data2 = null,Object? isLoading2 = null,}) {
  return _then(_Normal(
data1: freezed == data1 ? _self.data1 : data1 // ignore: cast_nullable_to_non_nullable
as Img?,isLoading1: null == isLoading1 ? _self.isLoading1 : isLoading1 // ignore: cast_nullable_to_non_nullable
as bool,data2: null == data2 ? _self._data2 : data2 // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading2: null == isLoading2 ? _self.isLoading2 : isLoading2 // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ImgState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImgCopyWith<$Res>? get data1 {
    if (_self.data1 == null) {
    return null;
  }

  return $ImgCopyWith<$Res>(_self.data1!, (value) {
    return _then(_self.copyWith(data1: value));
  });
}
}

/// @nodoc


class _Loading implements ImgState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ImgState.loading()';
}


}




/// @nodoc


class _Error implements ImgState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ImgState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ImgState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ImgStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ImgState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

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
