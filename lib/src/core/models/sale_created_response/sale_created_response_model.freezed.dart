// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_created_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleCreatedResponseModel {

 String get message; String? get saleId;
/// Create a copy of SaleCreatedResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleCreatedResponseModelCopyWith<SaleCreatedResponseModel> get copyWith => _$SaleCreatedResponseModelCopyWithImpl<SaleCreatedResponseModel>(this as SaleCreatedResponseModel, _$identity);

  /// Serializes this SaleCreatedResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleCreatedResponseModel&&(identical(other.message, message) || other.message == message)&&(identical(other.saleId, saleId) || other.saleId == saleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,saleId);

@override
String toString() {
  return 'SaleCreatedResponseModel(message: $message, saleId: $saleId)';
}


}

/// @nodoc
abstract mixin class $SaleCreatedResponseModelCopyWith<$Res>  {
  factory $SaleCreatedResponseModelCopyWith(SaleCreatedResponseModel value, $Res Function(SaleCreatedResponseModel) _then) = _$SaleCreatedResponseModelCopyWithImpl;
@useResult
$Res call({
 String message, String? saleId
});




}
/// @nodoc
class _$SaleCreatedResponseModelCopyWithImpl<$Res>
    implements $SaleCreatedResponseModelCopyWith<$Res> {
  _$SaleCreatedResponseModelCopyWithImpl(this._self, this._then);

  final SaleCreatedResponseModel _self;
  final $Res Function(SaleCreatedResponseModel) _then;

/// Create a copy of SaleCreatedResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? saleId = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,saleId: freezed == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleCreatedResponseModel].
extension SaleCreatedResponseModelPatterns on SaleCreatedResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleCreatedResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleCreatedResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleCreatedResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SaleCreatedResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleCreatedResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaleCreatedResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String? saleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleCreatedResponseModel() when $default != null:
return $default(_that.message,_that.saleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String? saleId)  $default,) {final _that = this;
switch (_that) {
case _SaleCreatedResponseModel():
return $default(_that.message,_that.saleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String? saleId)?  $default,) {final _that = this;
switch (_that) {
case _SaleCreatedResponseModel() when $default != null:
return $default(_that.message,_that.saleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaleCreatedResponseModel implements SaleCreatedResponseModel {
  const _SaleCreatedResponseModel({required this.message, this.saleId});
  factory _SaleCreatedResponseModel.fromJson(Map<String, dynamic> json) => _$SaleCreatedResponseModelFromJson(json);

@override final  String message;
@override final  String? saleId;

/// Create a copy of SaleCreatedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleCreatedResponseModelCopyWith<_SaleCreatedResponseModel> get copyWith => __$SaleCreatedResponseModelCopyWithImpl<_SaleCreatedResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleCreatedResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleCreatedResponseModel&&(identical(other.message, message) || other.message == message)&&(identical(other.saleId, saleId) || other.saleId == saleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,saleId);

@override
String toString() {
  return 'SaleCreatedResponseModel(message: $message, saleId: $saleId)';
}


}

/// @nodoc
abstract mixin class _$SaleCreatedResponseModelCopyWith<$Res> implements $SaleCreatedResponseModelCopyWith<$Res> {
  factory _$SaleCreatedResponseModelCopyWith(_SaleCreatedResponseModel value, $Res Function(_SaleCreatedResponseModel) _then) = __$SaleCreatedResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String message, String? saleId
});




}
/// @nodoc
class __$SaleCreatedResponseModelCopyWithImpl<$Res>
    implements _$SaleCreatedResponseModelCopyWith<$Res> {
  __$SaleCreatedResponseModelCopyWithImpl(this._self, this._then);

  final _SaleCreatedResponseModel _self;
  final $Res Function(_SaleCreatedResponseModel) _then;

/// Create a copy of SaleCreatedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? saleId = freezed,}) {
  return _then(_SaleCreatedResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,saleId: freezed == saleId ? _self.saleId : saleId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
