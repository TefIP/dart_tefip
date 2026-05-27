// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoModel {

 String get appName; String get version; String get build; String get platform; String get locale; String get timeZone; String get mode; bool get isActive; bool get isBusy;
/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoModelCopyWith<InfoModel> get copyWith => _$InfoModelCopyWithImpl<InfoModel>(this as InfoModel, _$identity);

  /// Serializes this InfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoModel&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.build, build) || other.build == build)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appName,version,build,platform,locale,timeZone,mode,isActive,isBusy);

@override
String toString() {
  return 'InfoModel(appName: $appName, version: $version, build: $build, platform: $platform, locale: $locale, timeZone: $timeZone, mode: $mode, isActive: $isActive, isBusy: $isBusy)';
}


}

/// @nodoc
abstract mixin class $InfoModelCopyWith<$Res>  {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) _then) = _$InfoModelCopyWithImpl;
@useResult
$Res call({
 String appName, String version, String build, String platform, String locale, String timeZone, String mode, bool isActive, bool isBusy
});




}
/// @nodoc
class _$InfoModelCopyWithImpl<$Res>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._self, this._then);

  final InfoModel _self;
  final $Res Function(InfoModel) _then;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appName = null,Object? version = null,Object? build = null,Object? platform = null,Object? locale = null,Object? timeZone = null,Object? mode = null,Object? isActive = null,Object? isBusy = null,}) {
  return _then(_self.copyWith(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,build: null == build ? _self.build : build // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoModel].
extension InfoModelPatterns on InfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoModel value)  $default,){
final _that = this;
switch (_that) {
case _InfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appName,  String version,  String build,  String platform,  String locale,  String timeZone,  String mode,  bool isActive,  bool isBusy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
return $default(_that.appName,_that.version,_that.build,_that.platform,_that.locale,_that.timeZone,_that.mode,_that.isActive,_that.isBusy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appName,  String version,  String build,  String platform,  String locale,  String timeZone,  String mode,  bool isActive,  bool isBusy)  $default,) {final _that = this;
switch (_that) {
case _InfoModel():
return $default(_that.appName,_that.version,_that.build,_that.platform,_that.locale,_that.timeZone,_that.mode,_that.isActive,_that.isBusy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appName,  String version,  String build,  String platform,  String locale,  String timeZone,  String mode,  bool isActive,  bool isBusy)?  $default,) {final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
return $default(_that.appName,_that.version,_that.build,_that.platform,_that.locale,_that.timeZone,_that.mode,_that.isActive,_that.isBusy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoModel implements InfoModel {
  const _InfoModel({required this.appName, required this.version, required this.build, required this.platform, required this.locale, required this.timeZone, required this.mode, required this.isActive, required this.isBusy});
  factory _InfoModel.fromJson(Map<String, dynamic> json) => _$InfoModelFromJson(json);

@override final  String appName;
@override final  String version;
@override final  String build;
@override final  String platform;
@override final  String locale;
@override final  String timeZone;
@override final  String mode;
@override final  bool isActive;
@override final  bool isBusy;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoModelCopyWith<_InfoModel> get copyWith => __$InfoModelCopyWithImpl<_InfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoModel&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.build, build) || other.build == build)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isBusy, isBusy) || other.isBusy == isBusy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,appName,version,build,platform,locale,timeZone,mode,isActive,isBusy);

@override
String toString() {
  return 'InfoModel(appName: $appName, version: $version, build: $build, platform: $platform, locale: $locale, timeZone: $timeZone, mode: $mode, isActive: $isActive, isBusy: $isBusy)';
}


}

/// @nodoc
abstract mixin class _$InfoModelCopyWith<$Res> implements $InfoModelCopyWith<$Res> {
  factory _$InfoModelCopyWith(_InfoModel value, $Res Function(_InfoModel) _then) = __$InfoModelCopyWithImpl;
@override @useResult
$Res call({
 String appName, String version, String build, String platform, String locale, String timeZone, String mode, bool isActive, bool isBusy
});




}
/// @nodoc
class __$InfoModelCopyWithImpl<$Res>
    implements _$InfoModelCopyWith<$Res> {
  __$InfoModelCopyWithImpl(this._self, this._then);

  final _InfoModel _self;
  final $Res Function(_InfoModel) _then;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appName = null,Object? version = null,Object? build = null,Object? platform = null,Object? locale = null,Object? timeZone = null,Object? mode = null,Object? isActive = null,Object? isBusy = null,}) {
  return _then(_InfoModel(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,build: null == build ? _self.build : build // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isBusy: null == isBusy ? _self.isBusy : isBusy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
