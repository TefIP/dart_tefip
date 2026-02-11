// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 String? get referenceId;@TefIPTransactionTypeConverter() TefIPTransactionType get type; TefIPTransactionStatus get transactionStatus; TefIPInstallmentType get installmentType; double get amount; int get installments; String? get nsu;@TefIPUnixDateTimeConverter() DateTime? get createdAt;@TefIPUnixDateTimeConverter() DateTime? get updatedAt;@TefIPDetailsConverter() Map<String, dynamic>? get paymentDetails;@TefIPDetailsConverter() Map<String, dynamic>? get reversalDetails;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.nsu, nsu) || other.nsu == nsu)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.paymentDetails, paymentDetails)&&const DeepCollectionEquality().equals(other.reversalDetails, reversalDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,type,transactionStatus,installmentType,amount,installments,nsu,createdAt,updatedAt,const DeepCollectionEquality().hash(paymentDetails),const DeepCollectionEquality().hash(reversalDetails));

@override
String toString() {
  return 'TransactionModel(referenceId: $referenceId, type: $type, transactionStatus: $transactionStatus, installmentType: $installmentType, amount: $amount, installments: $installments, nsu: $nsu, createdAt: $createdAt, updatedAt: $updatedAt, paymentDetails: $paymentDetails, reversalDetails: $reversalDetails)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 String? referenceId,@TefIPTransactionTypeConverter() TefIPTransactionType type, TefIPTransactionStatus transactionStatus, TefIPInstallmentType installmentType, double amount, int installments, String? nsu,@TefIPUnixDateTimeConverter() DateTime? createdAt,@TefIPUnixDateTimeConverter() DateTime? updatedAt,@TefIPDetailsConverter() Map<String, dynamic>? paymentDetails,@TefIPDetailsConverter() Map<String, dynamic>? reversalDetails
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referenceId = freezed,Object? type = null,Object? transactionStatus = null,Object? installmentType = null,Object? amount = null,Object? installments = null,Object? nsu = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentDetails = freezed,Object? reversalDetails = freezed,}) {
  return _then(_self.copyWith(
referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPTransactionType,transactionStatus: null == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as TefIPTransactionStatus,installmentType: null == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as TefIPInstallmentType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int,nsu: freezed == nsu ? _self.nsu : nsu // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentDetails: freezed == paymentDetails ? _self.paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,reversalDetails: freezed == reversalDetails ? _self.reversalDetails : reversalDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? referenceId, @TefIPTransactionTypeConverter()  TefIPTransactionType type,  TefIPTransactionStatus transactionStatus,  TefIPInstallmentType installmentType,  double amount,  int installments,  String? nsu, @TefIPUnixDateTimeConverter()  DateTime? createdAt, @TefIPUnixDateTimeConverter()  DateTime? updatedAt, @TefIPDetailsConverter()  Map<String, dynamic>? paymentDetails, @TefIPDetailsConverter()  Map<String, dynamic>? reversalDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.referenceId,_that.type,_that.transactionStatus,_that.installmentType,_that.amount,_that.installments,_that.nsu,_that.createdAt,_that.updatedAt,_that.paymentDetails,_that.reversalDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? referenceId, @TefIPTransactionTypeConverter()  TefIPTransactionType type,  TefIPTransactionStatus transactionStatus,  TefIPInstallmentType installmentType,  double amount,  int installments,  String? nsu, @TefIPUnixDateTimeConverter()  DateTime? createdAt, @TefIPUnixDateTimeConverter()  DateTime? updatedAt, @TefIPDetailsConverter()  Map<String, dynamic>? paymentDetails, @TefIPDetailsConverter()  Map<String, dynamic>? reversalDetails)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.referenceId,_that.type,_that.transactionStatus,_that.installmentType,_that.amount,_that.installments,_that.nsu,_that.createdAt,_that.updatedAt,_that.paymentDetails,_that.reversalDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? referenceId, @TefIPTransactionTypeConverter()  TefIPTransactionType type,  TefIPTransactionStatus transactionStatus,  TefIPInstallmentType installmentType,  double amount,  int installments,  String? nsu, @TefIPUnixDateTimeConverter()  DateTime? createdAt, @TefIPUnixDateTimeConverter()  DateTime? updatedAt, @TefIPDetailsConverter()  Map<String, dynamic>? paymentDetails, @TefIPDetailsConverter()  Map<String, dynamic>? reversalDetails)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.referenceId,_that.type,_that.transactionStatus,_that.installmentType,_that.amount,_that.installments,_that.nsu,_that.createdAt,_that.updatedAt,_that.paymentDetails,_that.reversalDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({this.referenceId, @TefIPTransactionTypeConverter() this.type = TefIPTransactionType.unknown, this.transactionStatus = TefIPTransactionStatus.unknown, this.installmentType = TefIPInstallmentType.single, this.amount = 0.0, this.installments = 1, this.nsu, @TefIPUnixDateTimeConverter() this.createdAt, @TefIPUnixDateTimeConverter() this.updatedAt, @TefIPDetailsConverter() final  Map<String, dynamic>? paymentDetails, @TefIPDetailsConverter() final  Map<String, dynamic>? reversalDetails}): _paymentDetails = paymentDetails,_reversalDetails = reversalDetails;
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  String? referenceId;
@override@JsonKey()@TefIPTransactionTypeConverter() final  TefIPTransactionType type;
@override@JsonKey() final  TefIPTransactionStatus transactionStatus;
@override@JsonKey() final  TefIPInstallmentType installmentType;
@override@JsonKey() final  double amount;
@override@JsonKey() final  int installments;
@override final  String? nsu;
@override@TefIPUnixDateTimeConverter() final  DateTime? createdAt;
@override@TefIPUnixDateTimeConverter() final  DateTime? updatedAt;
 final  Map<String, dynamic>? _paymentDetails;
@override@TefIPDetailsConverter() Map<String, dynamic>? get paymentDetails {
  final value = _paymentDetails;
  if (value == null) return null;
  if (_paymentDetails is EqualUnmodifiableMapView) return _paymentDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _reversalDetails;
@override@TefIPDetailsConverter() Map<String, dynamic>? get reversalDetails {
  final value = _reversalDetails;
  if (value == null) return null;
  if (_reversalDetails is EqualUnmodifiableMapView) return _reversalDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.type, type) || other.type == type)&&(identical(other.transactionStatus, transactionStatus) || other.transactionStatus == transactionStatus)&&(identical(other.installmentType, installmentType) || other.installmentType == installmentType)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.installments, installments) || other.installments == installments)&&(identical(other.nsu, nsu) || other.nsu == nsu)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._paymentDetails, _paymentDetails)&&const DeepCollectionEquality().equals(other._reversalDetails, _reversalDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referenceId,type,transactionStatus,installmentType,amount,installments,nsu,createdAt,updatedAt,const DeepCollectionEquality().hash(_paymentDetails),const DeepCollectionEquality().hash(_reversalDetails));

@override
String toString() {
  return 'TransactionModel(referenceId: $referenceId, type: $type, transactionStatus: $transactionStatus, installmentType: $installmentType, amount: $amount, installments: $installments, nsu: $nsu, createdAt: $createdAt, updatedAt: $updatedAt, paymentDetails: $paymentDetails, reversalDetails: $reversalDetails)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String? referenceId,@TefIPTransactionTypeConverter() TefIPTransactionType type, TefIPTransactionStatus transactionStatus, TefIPInstallmentType installmentType, double amount, int installments, String? nsu,@TefIPUnixDateTimeConverter() DateTime? createdAt,@TefIPUnixDateTimeConverter() DateTime? updatedAt,@TefIPDetailsConverter() Map<String, dynamic>? paymentDetails,@TefIPDetailsConverter() Map<String, dynamic>? reversalDetails
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referenceId = freezed,Object? type = null,Object? transactionStatus = null,Object? installmentType = null,Object? amount = null,Object? installments = null,Object? nsu = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentDetails = freezed,Object? reversalDetails = freezed,}) {
  return _then(_TransactionModel(
referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPTransactionType,transactionStatus: null == transactionStatus ? _self.transactionStatus : transactionStatus // ignore: cast_nullable_to_non_nullable
as TefIPTransactionStatus,installmentType: null == installmentType ? _self.installmentType : installmentType // ignore: cast_nullable_to_non_nullable
as TefIPInstallmentType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,installments: null == installments ? _self.installments : installments // ignore: cast_nullable_to_non_nullable
as int,nsu: freezed == nsu ? _self.nsu : nsu // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentDetails: freezed == paymentDetails ? _self._paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,reversalDetails: freezed == reversalDetails ? _self._reversalDetails : reversalDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
