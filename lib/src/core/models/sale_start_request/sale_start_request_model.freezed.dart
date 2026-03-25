// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_start_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleStartRequestModel {

 String? get customerDocument; String? get customerName; String? get sellerName; String? get additionalInfo;
/// Create a copy of SaleStartRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleStartRequestModelCopyWith<SaleStartRequestModel> get copyWith => _$SaleStartRequestModelCopyWithImpl<SaleStartRequestModel>(this as SaleStartRequestModel, _$identity);

  /// Serializes this SaleStartRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleStartRequestModel&&(identical(other.customerDocument, customerDocument) || other.customerDocument == customerDocument)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerDocument,customerName,sellerName,additionalInfo);

@override
String toString() {
  return 'SaleStartRequestModel(customerDocument: $customerDocument, customerName: $customerName, sellerName: $sellerName, additionalInfo: $additionalInfo)';
}


}

/// @nodoc
abstract mixin class $SaleStartRequestModelCopyWith<$Res>  {
  factory $SaleStartRequestModelCopyWith(SaleStartRequestModel value, $Res Function(SaleStartRequestModel) _then) = _$SaleStartRequestModelCopyWithImpl;
@useResult
$Res call({
 String? customerDocument, String? customerName, String? sellerName, String? additionalInfo
});




}
/// @nodoc
class _$SaleStartRequestModelCopyWithImpl<$Res>
    implements $SaleStartRequestModelCopyWith<$Res> {
  _$SaleStartRequestModelCopyWithImpl(this._self, this._then);

  final SaleStartRequestModel _self;
  final $Res Function(SaleStartRequestModel) _then;

/// Create a copy of SaleStartRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerDocument = freezed,Object? customerName = freezed,Object? sellerName = freezed,Object? additionalInfo = freezed,}) {
  return _then(_self.copyWith(
customerDocument: freezed == customerDocument ? _self.customerDocument : customerDocument // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,additionalInfo: freezed == additionalInfo ? _self.additionalInfo : additionalInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleStartRequestModel].
extension SaleStartRequestModelPatterns on SaleStartRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleStartRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleStartRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleStartRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SaleStartRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleStartRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaleStartRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? customerDocument,  String? customerName,  String? sellerName,  String? additionalInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleStartRequestModel() when $default != null:
return $default(_that.customerDocument,_that.customerName,_that.sellerName,_that.additionalInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? customerDocument,  String? customerName,  String? sellerName,  String? additionalInfo)  $default,) {final _that = this;
switch (_that) {
case _SaleStartRequestModel():
return $default(_that.customerDocument,_that.customerName,_that.sellerName,_that.additionalInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? customerDocument,  String? customerName,  String? sellerName,  String? additionalInfo)?  $default,) {final _that = this;
switch (_that) {
case _SaleStartRequestModel() when $default != null:
return $default(_that.customerDocument,_that.customerName,_that.sellerName,_that.additionalInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaleStartRequestModel implements SaleStartRequestModel {
  const _SaleStartRequestModel({this.customerDocument, this.customerName, this.sellerName, this.additionalInfo});
  factory _SaleStartRequestModel.fromJson(Map<String, dynamic> json) => _$SaleStartRequestModelFromJson(json);

@override final  String? customerDocument;
@override final  String? customerName;
@override final  String? sellerName;
@override final  String? additionalInfo;

/// Create a copy of SaleStartRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStartRequestModelCopyWith<_SaleStartRequestModel> get copyWith => __$SaleStartRequestModelCopyWithImpl<_SaleStartRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleStartRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleStartRequestModel&&(identical(other.customerDocument, customerDocument) || other.customerDocument == customerDocument)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerDocument,customerName,sellerName,additionalInfo);

@override
String toString() {
  return 'SaleStartRequestModel(customerDocument: $customerDocument, customerName: $customerName, sellerName: $sellerName, additionalInfo: $additionalInfo)';
}


}

/// @nodoc
abstract mixin class _$SaleStartRequestModelCopyWith<$Res> implements $SaleStartRequestModelCopyWith<$Res> {
  factory _$SaleStartRequestModelCopyWith(_SaleStartRequestModel value, $Res Function(_SaleStartRequestModel) _then) = __$SaleStartRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? customerDocument, String? customerName, String? sellerName, String? additionalInfo
});




}
/// @nodoc
class __$SaleStartRequestModelCopyWithImpl<$Res>
    implements _$SaleStartRequestModelCopyWith<$Res> {
  __$SaleStartRequestModelCopyWithImpl(this._self, this._then);

  final _SaleStartRequestModel _self;
  final $Res Function(_SaleStartRequestModel) _then;

/// Create a copy of SaleStartRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerDocument = freezed,Object? customerName = freezed,Object? sellerName = freezed,Object? additionalInfo = freezed,}) {
  return _then(_SaleStartRequestModel(
customerDocument: freezed == customerDocument ? _self.customerDocument : customerDocument // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,sellerName: freezed == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String?,additionalInfo: freezed == additionalInfo ? _self.additionalInfo : additionalInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
