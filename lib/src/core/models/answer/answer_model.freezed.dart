// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnswerModel {

 int get id; String get value;@JsonKey(readValue: _readDisplayValue) String get displayValue;
/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerModelCopyWith<AnswerModel> get copyWith => _$AnswerModelCopyWithImpl<AnswerModel>(this as AnswerModel, _$identity);

  /// Serializes this AnswerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'AnswerModel(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class $AnswerModelCopyWith<$Res>  {
  factory $AnswerModelCopyWith(AnswerModel value, $Res Function(AnswerModel) _then) = _$AnswerModelCopyWithImpl;
@useResult
$Res call({
 int id, String value,@JsonKey(readValue: _readDisplayValue) String displayValue
});




}
/// @nodoc
class _$AnswerModelCopyWithImpl<$Res>
    implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._self, this._then);

  final AnswerModel _self;
  final $Res Function(AnswerModel) _then;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,Object? displayValue = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: null == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerModel].
extension AnswerModelPatterns on AnswerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerModel value)  $default,){
final _that = this;
switch (_that) {
case _AnswerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String value, @JsonKey(readValue: _readDisplayValue)  String displayValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String value, @JsonKey(readValue: _readDisplayValue)  String displayValue)  $default,) {final _that = this;
switch (_that) {
case _AnswerModel():
return $default(_that.id,_that.value,_that.displayValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String value, @JsonKey(readValue: _readDisplayValue)  String displayValue)?  $default,) {final _that = this;
switch (_that) {
case _AnswerModel() when $default != null:
return $default(_that.id,_that.value,_that.displayValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnswerModel implements AnswerModel {
  const _AnswerModel({required this.id, required this.value, @JsonKey(readValue: _readDisplayValue) required this.displayValue});
  factory _AnswerModel.fromJson(Map<String, dynamic> json) => _$AnswerModelFromJson(json);

@override final  int id;
@override final  String value;
@override@JsonKey(readValue: _readDisplayValue) final  String displayValue;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerModelCopyWith<_AnswerModel> get copyWith => __$AnswerModelCopyWithImpl<_AnswerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value)&&(identical(other.displayValue, displayValue) || other.displayValue == displayValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value,displayValue);

@override
String toString() {
  return 'AnswerModel(id: $id, value: $value, displayValue: $displayValue)';
}


}

/// @nodoc
abstract mixin class _$AnswerModelCopyWith<$Res> implements $AnswerModelCopyWith<$Res> {
  factory _$AnswerModelCopyWith(_AnswerModel value, $Res Function(_AnswerModel) _then) = __$AnswerModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String value,@JsonKey(readValue: _readDisplayValue) String displayValue
});




}
/// @nodoc
class __$AnswerModelCopyWithImpl<$Res>
    implements _$AnswerModelCopyWith<$Res> {
  __$AnswerModelCopyWithImpl(this._self, this._then);

  final _AnswerModel _self;
  final $Res Function(_AnswerModel) _then;

/// Create a copy of AnswerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,Object? displayValue = null,}) {
  return _then(_AnswerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,displayValue: null == displayValue ? _self.displayValue : displayValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
