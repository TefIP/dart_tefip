// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalePaymentModel {

 String get id;@JsonKey(name: 'tPag') TefIPSalePaymentType get type; String? get description; double get value; String? get additionalInfo;
/// Create a copy of SalePaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalePaymentModelCopyWith<SalePaymentModel> get copyWith => _$SalePaymentModelCopyWithImpl<SalePaymentModel>(this as SalePaymentModel, _$identity);

  /// Serializes this SalePaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalePaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,value,additionalInfo);

@override
String toString() {
  return 'SalePaymentModel(id: $id, type: $type, description: $description, value: $value, additionalInfo: $additionalInfo)';
}


}

/// @nodoc
abstract mixin class $SalePaymentModelCopyWith<$Res>  {
  factory $SalePaymentModelCopyWith(SalePaymentModel value, $Res Function(SalePaymentModel) _then) = _$SalePaymentModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'tPag') TefIPSalePaymentType type, String? description, double value, String? additionalInfo
});




}
/// @nodoc
class _$SalePaymentModelCopyWithImpl<$Res>
    implements $SalePaymentModelCopyWith<$Res> {
  _$SalePaymentModelCopyWithImpl(this._self, this._then);

  final SalePaymentModel _self;
  final $Res Function(SalePaymentModel) _then;

/// Create a copy of SalePaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? description = freezed,Object? value = null,Object? additionalInfo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPSalePaymentType,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,additionalInfo: freezed == additionalInfo ? _self.additionalInfo : additionalInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalePaymentModel].
extension SalePaymentModelPatterns on SalePaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalePaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalePaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalePaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _SalePaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalePaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalePaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'tPag')  TefIPSalePaymentType type,  String? description,  double value,  String? additionalInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalePaymentModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.value,_that.additionalInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'tPag')  TefIPSalePaymentType type,  String? description,  double value,  String? additionalInfo)  $default,) {final _that = this;
switch (_that) {
case _SalePaymentModel():
return $default(_that.id,_that.type,_that.description,_that.value,_that.additionalInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'tPag')  TefIPSalePaymentType type,  String? description,  double value,  String? additionalInfo)?  $default,) {final _that = this;
switch (_that) {
case _SalePaymentModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.value,_that.additionalInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalePaymentModel implements SalePaymentModel {
  const _SalePaymentModel({required this.id, @JsonKey(name: 'tPag') this.type = TefIPSalePaymentType.unknown, this.description, required this.value, this.additionalInfo});
  factory _SalePaymentModel.fromJson(Map<String, dynamic> json) => _$SalePaymentModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'tPag') final  TefIPSalePaymentType type;
@override final  String? description;
@override final  double value;
@override final  String? additionalInfo;

/// Create a copy of SalePaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalePaymentModelCopyWith<_SalePaymentModel> get copyWith => __$SalePaymentModelCopyWithImpl<_SalePaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalePaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalePaymentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.additionalInfo, additionalInfo) || other.additionalInfo == additionalInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,value,additionalInfo);

@override
String toString() {
  return 'SalePaymentModel(id: $id, type: $type, description: $description, value: $value, additionalInfo: $additionalInfo)';
}


}

/// @nodoc
abstract mixin class _$SalePaymentModelCopyWith<$Res> implements $SalePaymentModelCopyWith<$Res> {
  factory _$SalePaymentModelCopyWith(_SalePaymentModel value, $Res Function(_SalePaymentModel) _then) = __$SalePaymentModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'tPag') TefIPSalePaymentType type, String? description, double value, String? additionalInfo
});




}
/// @nodoc
class __$SalePaymentModelCopyWithImpl<$Res>
    implements _$SalePaymentModelCopyWith<$Res> {
  __$SalePaymentModelCopyWithImpl(this._self, this._then);

  final _SalePaymentModel _self;
  final $Res Function(_SalePaymentModel) _then;

/// Create a copy of SalePaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? description = freezed,Object? value = null,Object? additionalInfo = freezed,}) {
  return _then(_SalePaymentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPSalePaymentType,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,additionalInfo: freezed == additionalInfo ? _self.additionalInfo : additionalInfo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
