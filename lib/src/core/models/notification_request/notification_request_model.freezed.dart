// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationRequestModel {

 String get title; String get message;
/// Create a copy of NotificationRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationRequestModelCopyWith<NotificationRequestModel> get copyWith => _$NotificationRequestModelCopyWithImpl<NotificationRequestModel>(this as NotificationRequestModel, _$identity);

  /// Serializes this NotificationRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationRequestModel&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,message);

@override
String toString() {
  return 'NotificationRequestModel(title: $title, message: $message)';
}


}

/// @nodoc
abstract mixin class $NotificationRequestModelCopyWith<$Res>  {
  factory $NotificationRequestModelCopyWith(NotificationRequestModel value, $Res Function(NotificationRequestModel) _then) = _$NotificationRequestModelCopyWithImpl;
@useResult
$Res call({
 String title, String message
});




}
/// @nodoc
class _$NotificationRequestModelCopyWithImpl<$Res>
    implements $NotificationRequestModelCopyWith<$Res> {
  _$NotificationRequestModelCopyWithImpl(this._self, this._then);

  final NotificationRequestModel _self;
  final $Res Function(NotificationRequestModel) _then;

/// Create a copy of NotificationRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? message = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationRequestModel].
extension NotificationRequestModelPatterns on NotificationRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationRequestModel() when $default != null:
return $default(_that.title,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String message)  $default,) {final _that = this;
switch (_that) {
case _NotificationRequestModel():
return $default(_that.title,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String message)?  $default,) {final _that = this;
switch (_that) {
case _NotificationRequestModel() when $default != null:
return $default(_that.title,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationRequestModel implements NotificationRequestModel {
  const _NotificationRequestModel({required this.title, required this.message});
  factory _NotificationRequestModel.fromJson(Map<String, dynamic> json) => _$NotificationRequestModelFromJson(json);

@override final  String title;
@override final  String message;

/// Create a copy of NotificationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationRequestModelCopyWith<_NotificationRequestModel> get copyWith => __$NotificationRequestModelCopyWithImpl<_NotificationRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationRequestModel&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,message);

@override
String toString() {
  return 'NotificationRequestModel(title: $title, message: $message)';
}


}

/// @nodoc
abstract mixin class _$NotificationRequestModelCopyWith<$Res> implements $NotificationRequestModelCopyWith<$Res> {
  factory _$NotificationRequestModelCopyWith(_NotificationRequestModel value, $Res Function(_NotificationRequestModel) _then) = __$NotificationRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String message
});




}
/// @nodoc
class __$NotificationRequestModelCopyWithImpl<$Res>
    implements _$NotificationRequestModelCopyWith<$Res> {
  __$NotificationRequestModelCopyWithImpl(this._self, this._then);

  final _NotificationRequestModel _self;
  final $Res Function(_NotificationRequestModel) _then;

/// Create a copy of NotificationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,}) {
  return _then(_NotificationRequestModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
