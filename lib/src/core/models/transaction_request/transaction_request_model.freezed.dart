// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionRequestModel {

 String? get referenceId; TefIPTransactionType get type; double get amount; int get installments; TefIPInstallmentType get installmentType;@TefIPDetailsConverter() Map<String, dynamic>? get details;
/// Create a copy of TransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionRequestModelCopyWith<TransactionRequestModel> get copyWith => _$TransactionRequestModelCopyWithImpl<TransactionRequestModel>(this as TransactionRequestModel, _$identity);

  /// Serializes this TransactionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionRequestModel&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType)&&const DeepCollectionEquality().equals(other.details, details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,type,amount,installments,installmentType,const DeepCollectionEquality().hash(details));

@override
String toString() {
  return 'TransactionRequestModel(referenceId: $referenceId, type: $type, amount: $amount, installments: $installments, installmentType: $installmentType, details: $details)';
}


}

/// @nodoc
abstract mixin class $TransactionRequestModelCopyWith<$Res>  {
  factory $TransactionRequestModelCopyWith(TransactionRequestModel value, $Res Function(TransactionRequestModel) _then) = _$TransactionRequestModelCopyWithImpl;
@useResult
$Res call({
 String? referenceId, TefIPTransactionType type, double amount, int installments, TefIPInstallmentType installmentType,@TefIPDetailsConverter() Map<String, dynamic>? details
});




}
/// @nodoc
class _$TransactionRequestModelCopyWithImpl<$Res>
    implements $TransactionRequestModelCopyWith<$Res> {
  _$TransactionRequestModelCopyWithImpl(this._self, this._then);

  final TransactionRequestModel _self;
  final $Res Function(TransactionRequestModel) _then;

/// Create a copy of TransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referenceId = freezed,Object? type = null,Object? amount = null,Object? installments = null,Object? installmentType = null,Object? details = freezed,}) {
  return _then(_self.copyWith(
referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPTransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int,installmentType: null == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as TefIPInstallmentType,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionRequestModel].
extension TransactionRequestModelPatterns on TransactionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? referenceId,  TefIPTransactionType type,  double amount,  int installments,  TefIPInstallmentType installmentType, @TefIPDetailsConverter()  Map<String, dynamic>? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionRequestModel() when $default != null:
return $default(_that.referenceId,_that.type,_that.amount,_that.installments,_that.installmentType,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? referenceId,  TefIPTransactionType type,  double amount,  int installments,  TefIPInstallmentType installmentType, @TefIPDetailsConverter()  Map<String, dynamic>? details)  $default,) {final _that = this;
switch (_that) {
case _TransactionRequestModel():
return $default(_that.referenceId,_that.type,_that.amount,_that.installments,_that.installmentType,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? referenceId,  TefIPTransactionType type,  double amount,  int installments,  TefIPInstallmentType installmentType, @TefIPDetailsConverter()  Map<String, dynamic>? details)?  $default,) {final _that = this;
switch (_that) {
case _TransactionRequestModel() when $default != null:
return $default(_that.referenceId,_that.type,_that.amount,_that.installments,_that.installmentType,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionRequestModel implements TransactionRequestModel {
  const _TransactionRequestModel({this.referenceId = null, this.type = TefIPTransactionType.unknown, this.amount = 0, this.installments = 1, this.installmentType = TefIPInstallmentType.single, @TefIPDetailsConverter() final  Map<String, dynamic>? details}): _details = details;
  factory _TransactionRequestModel.fromJson(Map<String, dynamic> json) => _$TransactionRequestModelFromJson(json);

@override@JsonKey() final  String? referenceId;
@override@JsonKey() final  TefIPTransactionType type;
@override@JsonKey() final  double amount;
@override@JsonKey() final  int installments;
@override@JsonKey() final  TefIPInstallmentType installmentType;
 final  Map<String, dynamic>? _details;
@override@TefIPDetailsConverter() Map<String, dynamic>? get details {
  final value = _details;
  if (value == null) return null;
  if (_details is EqualUnmodifiableMapView) return _details;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionRequestModelCopyWith<_TransactionRequestModel> get copyWith => __$TransactionRequestModelCopyWithImpl<_TransactionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionRequestModel&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType)&&const DeepCollectionEquality().equals(other._details, _details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,type,amount,installments,installmentType,const DeepCollectionEquality().hash(_details));

@override
String toString() {
  return 'TransactionRequestModel(referenceId: $referenceId, type: $type, amount: $amount, installments: $installments, installmentType: $installmentType, details: $details)';
}


}

/// @nodoc
abstract mixin class _$TransactionRequestModelCopyWith<$Res> implements $TransactionRequestModelCopyWith<$Res> {
  factory _$TransactionRequestModelCopyWith(_TransactionRequestModel value, $Res Function(_TransactionRequestModel) _then) = __$TransactionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? referenceId, TefIPTransactionType type, double amount, int installments, TefIPInstallmentType installmentType,@TefIPDetailsConverter() Map<String, dynamic>? details
});




}
/// @nodoc
class __$TransactionRequestModelCopyWithImpl<$Res>
    implements _$TransactionRequestModelCopyWith<$Res> {
  __$TransactionRequestModelCopyWithImpl(this._self, this._then);

  final _TransactionRequestModel _self;
  final $Res Function(_TransactionRequestModel) _then;

/// Create a copy of TransactionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referenceId = freezed,Object? type = null,Object? amount = null,Object? installments = null,Object? installmentType = null,Object? details = freezed,}) {
  return _then(_TransactionRequestModel(
referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPTransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int,installmentType: null == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as TefIPInstallmentType,details: freezed == details ? _self._details : details // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
