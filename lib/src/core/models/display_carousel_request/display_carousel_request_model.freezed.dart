// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_carousel_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisplayCarouselRequestModel {

@TefIPImagesConverter() List<String> get images; int get intervalMs; TefIPCarouselTransition get transition; String get backgroundColor; bool get showCloseButton;
/// Create a copy of DisplayCarouselRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayCarouselRequestModelCopyWith<DisplayCarouselRequestModel> get copyWith => _$DisplayCarouselRequestModelCopyWithImpl<DisplayCarouselRequestModel>(this as DisplayCarouselRequestModel, _$identity);

  /// Serializes this DisplayCarouselRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayCarouselRequestModel&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.intervalMs, intervalMs) || other.intervalMs == intervalMs)&&(identical(other.transition, transition) || other.transition == transition)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.showCloseButton, showCloseButton) || other.showCloseButton == showCloseButton));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(images),intervalMs,transition,backgroundColor,showCloseButton);

@override
String toString() {
  return 'DisplayCarouselRequestModel(images: $images, intervalMs: $intervalMs, transition: $transition, backgroundColor: $backgroundColor, showCloseButton: $showCloseButton)';
}


}

/// @nodoc
abstract mixin class $DisplayCarouselRequestModelCopyWith<$Res>  {
  factory $DisplayCarouselRequestModelCopyWith(DisplayCarouselRequestModel value, $Res Function(DisplayCarouselRequestModel) _then) = _$DisplayCarouselRequestModelCopyWithImpl;
@useResult
$Res call({
@TefIPImagesConverter() List<String> images, int intervalMs, TefIPCarouselTransition transition, String backgroundColor, bool showCloseButton
});




}
/// @nodoc
class _$DisplayCarouselRequestModelCopyWithImpl<$Res>
    implements $DisplayCarouselRequestModelCopyWith<$Res> {
  _$DisplayCarouselRequestModelCopyWithImpl(this._self, this._then);

  final DisplayCarouselRequestModel _self;
  final $Res Function(DisplayCarouselRequestModel) _then;

/// Create a copy of DisplayCarouselRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,Object? intervalMs = null,Object? transition = null,Object? backgroundColor = null,Object? showCloseButton = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,intervalMs: null == intervalMs ? _self.intervalMs : intervalMs // ignore: cast_nullable_to_non_nullable
as int,transition: null == transition ? _self.transition : transition // ignore: cast_nullable_to_non_nullable
as TefIPCarouselTransition,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,showCloseButton: null == showCloseButton ? _self.showCloseButton : showCloseButton // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DisplayCarouselRequestModel].
extension DisplayCarouselRequestModelPatterns on DisplayCarouselRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisplayCarouselRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisplayCarouselRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisplayCarouselRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@TefIPImagesConverter()  List<String> images,  int intervalMs,  TefIPCarouselTransition transition,  String backgroundColor,  bool showCloseButton)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel() when $default != null:
return $default(_that.images,_that.intervalMs,_that.transition,_that.backgroundColor,_that.showCloseButton);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@TefIPImagesConverter()  List<String> images,  int intervalMs,  TefIPCarouselTransition transition,  String backgroundColor,  bool showCloseButton)  $default,) {final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel():
return $default(_that.images,_that.intervalMs,_that.transition,_that.backgroundColor,_that.showCloseButton);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@TefIPImagesConverter()  List<String> images,  int intervalMs,  TefIPCarouselTransition transition,  String backgroundColor,  bool showCloseButton)?  $default,) {final _that = this;
switch (_that) {
case _DisplayCarouselRequestModel() when $default != null:
return $default(_that.images,_that.intervalMs,_that.transition,_that.backgroundColor,_that.showCloseButton);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisplayCarouselRequestModel implements DisplayCarouselRequestModel {
  const _DisplayCarouselRequestModel({@TefIPImagesConverter() required final  List<String> images, this.intervalMs = 3000, this.transition = TefIPCarouselTransition.fade, required this.backgroundColor, this.showCloseButton = false}): _images = images;
  factory _DisplayCarouselRequestModel.fromJson(Map<String, dynamic> json) => _$DisplayCarouselRequestModelFromJson(json);

 final  List<String> _images;
@override@TefIPImagesConverter() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey() final  int intervalMs;
@override@JsonKey() final  TefIPCarouselTransition transition;
@override final  String backgroundColor;
@override@JsonKey() final  bool showCloseButton;

/// Create a copy of DisplayCarouselRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayCarouselRequestModelCopyWith<_DisplayCarouselRequestModel> get copyWith => __$DisplayCarouselRequestModelCopyWithImpl<_DisplayCarouselRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayCarouselRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayCarouselRequestModel&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.intervalMs, intervalMs) || other.intervalMs == intervalMs)&&(identical(other.transition, transition) || other.transition == transition)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.showCloseButton, showCloseButton) || other.showCloseButton == showCloseButton));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images),intervalMs,transition,backgroundColor,showCloseButton);

@override
String toString() {
  return 'DisplayCarouselRequestModel(images: $images, intervalMs: $intervalMs, transition: $transition, backgroundColor: $backgroundColor, showCloseButton: $showCloseButton)';
}


}

/// @nodoc
abstract mixin class _$DisplayCarouselRequestModelCopyWith<$Res> implements $DisplayCarouselRequestModelCopyWith<$Res> {
  factory _$DisplayCarouselRequestModelCopyWith(_DisplayCarouselRequestModel value, $Res Function(_DisplayCarouselRequestModel) _then) = __$DisplayCarouselRequestModelCopyWithImpl;
@override @useResult
$Res call({
@TefIPImagesConverter() List<String> images, int intervalMs, TefIPCarouselTransition transition, String backgroundColor, bool showCloseButton
});




}
/// @nodoc
class __$DisplayCarouselRequestModelCopyWithImpl<$Res>
    implements _$DisplayCarouselRequestModelCopyWith<$Res> {
  __$DisplayCarouselRequestModelCopyWithImpl(this._self, this._then);

  final _DisplayCarouselRequestModel _self;
  final $Res Function(_DisplayCarouselRequestModel) _then;

/// Create a copy of DisplayCarouselRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,Object? intervalMs = null,Object? transition = null,Object? backgroundColor = null,Object? showCloseButton = null,}) {
  return _then(_DisplayCarouselRequestModel(
images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,intervalMs: null == intervalMs ? _self.intervalMs : intervalMs // ignore: cast_nullable_to_non_nullable
as int,transition: null == transition ? _self.transition : transition // ignore: cast_nullable_to_non_nullable
as TefIPCarouselTransition,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,showCloseButton: null == showCloseButton ? _self.showCloseButton : showCloseButton // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
