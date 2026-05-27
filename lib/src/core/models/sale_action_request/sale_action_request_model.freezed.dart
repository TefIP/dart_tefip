// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_action_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleActionRequestModel {

 String? get message; bool get showMessage; bool get showCloseButton; String? get buttonCloseText; int get messageInterval;
/// Create a copy of SaleActionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleActionRequestModelCopyWith<SaleActionRequestModel> get copyWith => _$SaleActionRequestModelCopyWithImpl<SaleActionRequestModel>(this as SaleActionRequestModel, _$identity);

  /// Serializes this SaleActionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleActionRequestModel&&(identical(other.message, message) || other.message == message)&&(identical(other.showMessage, showMessage) || other.showMessage == showMessage)&&(identical(other.showCloseButton, showCloseButton) || other.showCloseButton == showCloseButton)&&(identical(other.buttonCloseText, buttonCloseText) || other.buttonCloseText == buttonCloseText)&&(identical(other.messageInterval, messageInterval) || other.messageInterval == messageInterval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,showMessage,showCloseButton,buttonCloseText,messageInterval);

@override
String toString() {
  return 'SaleActionRequestModel(message: $message, showMessage: $showMessage, showCloseButton: $showCloseButton, buttonCloseText: $buttonCloseText, messageInterval: $messageInterval)';
}


}

/// @nodoc
abstract mixin class $SaleActionRequestModelCopyWith<$Res>  {
  factory $SaleActionRequestModelCopyWith(SaleActionRequestModel value, $Res Function(SaleActionRequestModel) _then) = _$SaleActionRequestModelCopyWithImpl;
@useResult
$Res call({
 String? message, bool showMessage, bool showCloseButton, String? buttonCloseText, int messageInterval
});




}
/// @nodoc
class _$SaleActionRequestModelCopyWithImpl<$Res>
    implements $SaleActionRequestModelCopyWith<$Res> {
  _$SaleActionRequestModelCopyWithImpl(this._self, this._then);

  final SaleActionRequestModel _self;
  final $Res Function(SaleActionRequestModel) _then;

/// Create a copy of SaleActionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? showMessage = null,Object? showCloseButton = null,Object? buttonCloseText = freezed,Object? messageInterval = null,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,showMessage: null == showMessage ? _self.showMessage : showMessage // ignore: cast_nullable_to_non_nullable
as bool,showCloseButton: null == showCloseButton ? _self.showCloseButton : showCloseButton // ignore: cast_nullable_to_non_nullable
as bool,buttonCloseText: freezed == buttonCloseText ? _self.buttonCloseText : buttonCloseText // ignore: cast_nullable_to_non_nullable
as String?,messageInterval: null == messageInterval ? _self.messageInterval : messageInterval // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleActionRequestModel].
extension SaleActionRequestModelPatterns on SaleActionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleActionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleActionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleActionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SaleActionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleActionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaleActionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  bool showMessage,  bool showCloseButton,  String? buttonCloseText,  int messageInterval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleActionRequestModel() when $default != null:
return $default(_that.message,_that.showMessage,_that.showCloseButton,_that.buttonCloseText,_that.messageInterval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  bool showMessage,  bool showCloseButton,  String? buttonCloseText,  int messageInterval)  $default,) {final _that = this;
switch (_that) {
case _SaleActionRequestModel():
return $default(_that.message,_that.showMessage,_that.showCloseButton,_that.buttonCloseText,_that.messageInterval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  bool showMessage,  bool showCloseButton,  String? buttonCloseText,  int messageInterval)?  $default,) {final _that = this;
switch (_that) {
case _SaleActionRequestModel() when $default != null:
return $default(_that.message,_that.showMessage,_that.showCloseButton,_that.buttonCloseText,_that.messageInterval);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaleActionRequestModel implements SaleActionRequestModel {
  const _SaleActionRequestModel({this.message, this.showMessage = true, this.showCloseButton = true, this.buttonCloseText, this.messageInterval = 3000});
  factory _SaleActionRequestModel.fromJson(Map<String, dynamic> json) => _$SaleActionRequestModelFromJson(json);

@override final  String? message;
@override@JsonKey() final  bool showMessage;
@override@JsonKey() final  bool showCloseButton;
@override final  String? buttonCloseText;
@override@JsonKey() final  int messageInterval;

/// Create a copy of SaleActionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleActionRequestModelCopyWith<_SaleActionRequestModel> get copyWith => __$SaleActionRequestModelCopyWithImpl<_SaleActionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleActionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleActionRequestModel&&(identical(other.message, message) || other.message == message)&&(identical(other.showMessage, showMessage) || other.showMessage == showMessage)&&(identical(other.showCloseButton, showCloseButton) || other.showCloseButton == showCloseButton)&&(identical(other.buttonCloseText, buttonCloseText) || other.buttonCloseText == buttonCloseText)&&(identical(other.messageInterval, messageInterval) || other.messageInterval == messageInterval));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,showMessage,showCloseButton,buttonCloseText,messageInterval);

@override
String toString() {
  return 'SaleActionRequestModel(message: $message, showMessage: $showMessage, showCloseButton: $showCloseButton, buttonCloseText: $buttonCloseText, messageInterval: $messageInterval)';
}


}

/// @nodoc
abstract mixin class _$SaleActionRequestModelCopyWith<$Res> implements $SaleActionRequestModelCopyWith<$Res> {
  factory _$SaleActionRequestModelCopyWith(_SaleActionRequestModel value, $Res Function(_SaleActionRequestModel) _then) = __$SaleActionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? message, bool showMessage, bool showCloseButton, String? buttonCloseText, int messageInterval
});




}
/// @nodoc
class __$SaleActionRequestModelCopyWithImpl<$Res>
    implements _$SaleActionRequestModelCopyWith<$Res> {
  __$SaleActionRequestModelCopyWithImpl(this._self, this._then);

  final _SaleActionRequestModel _self;
  final $Res Function(_SaleActionRequestModel) _then;

/// Create a copy of SaleActionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? showMessage = null,Object? showCloseButton = null,Object? buttonCloseText = freezed,Object? messageInterval = null,}) {
  return _then(_SaleActionRequestModel(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,showMessage: null == showMessage ? _self.showMessage : showMessage // ignore: cast_nullable_to_non_nullable
as bool,showCloseButton: null == showCloseButton ? _self.showCloseButton : showCloseButton // ignore: cast_nullable_to_non_nullable
as bool,buttonCloseText: freezed == buttonCloseText ? _self.buttonCloseText : buttonCloseText // ignore: cast_nullable_to_non_nullable
as String?,messageInterval: null == messageInterval ? _self.messageInterval : messageInterval // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
