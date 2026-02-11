// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuccessResponseModel {

 String get message;
/// Create a copy of SuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessResponseModelCopyWith<SuccessResponseModel> get copyWith => _$SuccessResponseModelCopyWithImpl<SuccessResponseModel>(this as SuccessResponseModel, _$identity);

  /// Serializes this SuccessResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SuccessResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $SuccessResponseModelCopyWith<$Res>  {
  factory $SuccessResponseModelCopyWith(SuccessResponseModel value, $Res Function(SuccessResponseModel) _then) = _$SuccessResponseModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SuccessResponseModelCopyWithImpl<$Res>
    implements $SuccessResponseModelCopyWith<$Res> {
  _$SuccessResponseModelCopyWithImpl(this._self, this._then);

  final SuccessResponseModel _self;
  final $Res Function(SuccessResponseModel) _then;

/// Create a copy of SuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SuccessResponseModel].
extension SuccessResponseModelPatterns on SuccessResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuccessResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuccessResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuccessResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SuccessResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuccessResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SuccessResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuccessResponseModel() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _SuccessResponseModel():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _SuccessResponseModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuccessResponseModel implements SuccessResponseModel {
  const _SuccessResponseModel({required this.message});
  factory _SuccessResponseModel.fromJson(Map<String, dynamic> json) => _$SuccessResponseModelFromJson(json);

@override final  String message;

/// Create a copy of SuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessResponseModelCopyWith<_SuccessResponseModel> get copyWith => __$SuccessResponseModelCopyWithImpl<_SuccessResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuccessResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessResponseModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SuccessResponseModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessResponseModelCopyWith<$Res> implements $SuccessResponseModelCopyWith<$Res> {
  factory _$SuccessResponseModelCopyWith(_SuccessResponseModel value, $Res Function(_SuccessResponseModel) _then) = __$SuccessResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessResponseModelCopyWithImpl<$Res>
    implements _$SuccessResponseModelCopyWith<$Res> {
  __$SuccessResponseModelCopyWithImpl(this._self, this._then);

  final _SuccessResponseModel _self;
  final $Res Function(_SuccessResponseModel) _then;

/// Create a copy of SuccessResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SuccessResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
