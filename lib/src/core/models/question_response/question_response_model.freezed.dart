// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionResponseModel {

 int get id; String get value;
/// Create a copy of QuestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionResponseModelCopyWith<QuestionResponseModel> get copyWith => _$QuestionResponseModelCopyWithImpl<QuestionResponseModel>(this as QuestionResponseModel, _$identity);

  /// Serializes this QuestionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'QuestionResponseModel(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class $QuestionResponseModelCopyWith<$Res>  {
  factory $QuestionResponseModelCopyWith(QuestionResponseModel value, $Res Function(QuestionResponseModel) _then) = _$QuestionResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String value
});




}
/// @nodoc
class _$QuestionResponseModelCopyWithImpl<$Res>
    implements $QuestionResponseModelCopyWith<$Res> {
  _$QuestionResponseModelCopyWithImpl(this._self, this._then);

  final QuestionResponseModel _self;
  final $Res Function(QuestionResponseModel) _then;

/// Create a copy of QuestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? value = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionResponseModel].
extension QuestionResponseModelPatterns on QuestionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _QuestionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionResponseModel() when $default != null:
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String value)  $default,) {final _that = this;
switch (_that) {
case _QuestionResponseModel():
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String value)?  $default,) {final _that = this;
switch (_that) {
case _QuestionResponseModel() when $default != null:
return $default(_that.id,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionResponseModel implements QuestionResponseModel {
  const _QuestionResponseModel({required this.id, required this.value});
  factory _QuestionResponseModel.fromJson(Map<String, dynamic> json) => _$QuestionResponseModelFromJson(json);

@override final  int id;
@override final  String value;

/// Create a copy of QuestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionResponseModelCopyWith<_QuestionResponseModel> get copyWith => __$QuestionResponseModelCopyWithImpl<_QuestionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'QuestionResponseModel(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class _$QuestionResponseModelCopyWith<$Res> implements $QuestionResponseModelCopyWith<$Res> {
  factory _$QuestionResponseModelCopyWith(_QuestionResponseModel value, $Res Function(_QuestionResponseModel) _then) = __$QuestionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String value
});




}
/// @nodoc
class __$QuestionResponseModelCopyWithImpl<$Res>
    implements _$QuestionResponseModelCopyWith<$Res> {
  __$QuestionResponseModelCopyWithImpl(this._self, this._then);

  final _QuestionResponseModel _self;
  final $Res Function(_QuestionResponseModel) _then;

/// Create a copy of QuestionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? value = null,}) {
  return _then(_QuestionResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
