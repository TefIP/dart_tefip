// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusModel {

 String get status; int get uptimeSeconds; String get startedAt;
/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusModelCopyWith<StatusModel> get copyWith => _$StatusModelCopyWithImpl<StatusModel>(this as StatusModel, _$identity);

  /// Serializes this StatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.uptimeSeconds, uptimeSeconds) || other.uptimeSeconds == uptimeSeconds)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,uptimeSeconds,startedAt);

@override
String toString() {
  return 'StatusModel(status: $status, uptimeSeconds: $uptimeSeconds, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class $StatusModelCopyWith<$Res>  {
  factory $StatusModelCopyWith(StatusModel value, $Res Function(StatusModel) _then) = _$StatusModelCopyWithImpl;
@useResult
$Res call({
 String status, int uptimeSeconds, String startedAt
});




}
/// @nodoc
class _$StatusModelCopyWithImpl<$Res>
    implements $StatusModelCopyWith<$Res> {
  _$StatusModelCopyWithImpl(this._self, this._then);

  final StatusModel _self;
  final $Res Function(StatusModel) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? uptimeSeconds = null,Object? startedAt = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,uptimeSeconds: null == uptimeSeconds ? _self.uptimeSeconds : uptimeSeconds // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusModel].
extension StatusModelPatterns on StatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusModel value)  $default,){
final _that = this;
switch (_that) {
case _StatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int uptimeSeconds,  String startedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
return $default(_that.status,_that.uptimeSeconds,_that.startedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int uptimeSeconds,  String startedAt)  $default,) {final _that = this;
switch (_that) {
case _StatusModel():
return $default(_that.status,_that.uptimeSeconds,_that.startedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int uptimeSeconds,  String startedAt)?  $default,) {final _that = this;
switch (_that) {
case _StatusModel() when $default != null:
return $default(_that.status,_that.uptimeSeconds,_that.startedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatusModel implements StatusModel {
  const _StatusModel({required this.status, required this.uptimeSeconds, required this.startedAt});
  factory _StatusModel.fromJson(Map<String, dynamic> json) => _$StatusModelFromJson(json);

@override final  String status;
@override final  int uptimeSeconds;
@override final  String startedAt;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusModelCopyWith<_StatusModel> get copyWith => __$StatusModelCopyWithImpl<_StatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusModel&&(identical(other.status, status) || other.status == status)&&(identical(other.uptimeSeconds, uptimeSeconds) || other.uptimeSeconds == uptimeSeconds)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,uptimeSeconds,startedAt);

@override
String toString() {
  return 'StatusModel(status: $status, uptimeSeconds: $uptimeSeconds, startedAt: $startedAt)';
}


}

/// @nodoc
abstract mixin class _$StatusModelCopyWith<$Res> implements $StatusModelCopyWith<$Res> {
  factory _$StatusModelCopyWith(_StatusModel value, $Res Function(_StatusModel) _then) = __$StatusModelCopyWithImpl;
@override @useResult
$Res call({
 String status, int uptimeSeconds, String startedAt
});




}
/// @nodoc
class __$StatusModelCopyWithImpl<$Res>
    implements _$StatusModelCopyWith<$Res> {
  __$StatusModelCopyWithImpl(this._self, this._then);

  final _StatusModel _self;
  final $Res Function(_StatusModel) _then;

/// Create a copy of StatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? uptimeSeconds = null,Object? startedAt = null,}) {
  return _then(_StatusModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,uptimeSeconds: null == uptimeSeconds ? _self.uptimeSeconds : uptimeSeconds // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
