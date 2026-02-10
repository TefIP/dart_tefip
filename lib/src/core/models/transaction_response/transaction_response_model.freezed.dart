// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionResponseModel {

 String? get nsu; String? get message; Map<String, dynamic>? get details;
/// Create a copy of TransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionResponseModelCopyWith<TransactionResponseModel> get copyWith => _$TransactionResponseModelCopyWithImpl<TransactionResponseModel>(this as TransactionResponseModel, _$identity);

  /// Serializes this TransactionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionResponseModel&&(identical(other.nsu, nsu) || other.nsu == nsu)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.details, details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nsu,message,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'TransactionResponseModel(nsu: $nsu, message: $message, details: $details)';
}


}

/// @nodoc
abstract mixin class $TransactionResponseModelCopyWith<$Res>  {
  factory $TransactionResponseModelCopyWith(TransactionResponseModel value, $Res Function(TransactionResponseModel) _then) = _$TransactionResponseModelCopyWithImpl;
@useResult
$Res call({
 String? nsu, String? message, Map<String, dynamic>? details
});




}
/// @nodoc
class _$TransactionResponseModelCopyWithImpl<$Res>
    implements $TransactionResponseModelCopyWith<$Res> {
  _$TransactionResponseModelCopyWithImpl(this._self, this._then);

  final TransactionResponseModel _self;
  final $Res Function(TransactionResponseModel) _then;

/// Create a copy of TransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nsu = freezed,Object? message = freezed,Object? details = freezed,}) {
  return _then(_self.copyWith(
nsu: freezed == nsu ? _self.nsu : nsu // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionResponseModel].
extension TransactionResponseModelPatterns on TransactionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nsu,  String? message,  Map<String, dynamic>? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionResponseModel() when $default != null:
return $default(_that.nsu,_that.message,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nsu,  String? message,  Map<String, dynamic>? details)  $default,) {final _that = this;
switch (_that) {
case _TransactionResponseModel():
return $default(_that.nsu,_that.message,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nsu,  String? message,  Map<String, dynamic>? details)?  $default,) {final _that = this;
switch (_that) {
case _TransactionResponseModel() when $default != null:
return $default(_that.nsu,_that.message,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionResponseModel implements TransactionResponseModel {
  const _TransactionResponseModel({this.nsu = null, this.message = null, final  Map<String, dynamic>? details = null}): _details = details;
  factory _TransactionResponseModel.fromJson(Map<String, dynamic> json) => _$TransactionResponseModelFromJson(json);

@override@JsonKey() final  String? nsu;
@override@JsonKey() final  String? message;
 final  Map<String, dynamic>? _details;
@override@JsonKey() Map<String, dynamic>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionResponseModelCopyWith<_TransactionResponseModel> get copyWith => __$TransactionResponseModelCopyWithImpl<_TransactionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionResponseModel&&(identical(other.nsu, nsu) || other.nsu == nsu)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._details, _details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nsu,message,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'TransactionResponseModel(nsu: $nsu, message: $message, details: $details)';
}


}

/// @nodoc
abstract mixin class _$TransactionResponseModelCopyWith<$Res> implements $TransactionResponseModelCopyWith<$Res> {
  factory _$TransactionResponseModelCopyWith(_TransactionResponseModel value, $Res Function(_TransactionResponseModel) _then) = __$TransactionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? nsu, String? message, Map<String, dynamic>? details
});




}
/// @nodoc
class __$TransactionResponseModelCopyWithImpl<$Res>
    implements _$TransactionResponseModelCopyWith<$Res> {
  __$TransactionResponseModelCopyWithImpl(this._self, this._then);

  final _TransactionResponseModel _self;
  final $Res Function(_TransactionResponseModel) _then;

/// Create a copy of TransactionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nsu = freezed,Object? message = freezed,Object? details = freezed,}) {
  return _then(_TransactionResponseModel(
nsu: freezed == nsu ? _self.nsu : nsu // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
