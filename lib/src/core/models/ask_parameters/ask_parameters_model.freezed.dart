// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_parameters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AskParametersModel {

 String get buttonText; bool get showCancelButton; String get buttonCancelText; bool get showSuccessMessage; String? get successMessage; int get successMessageInterval; bool get confirmAnswer;
/// Create a copy of AskParametersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AskParametersModelCopyWith<AskParametersModel> get copyWith => _$AskParametersModelCopyWithImpl<AskParametersModel>(this as AskParametersModel, _$identity);

  /// Serializes this AskParametersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AskParametersModel&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.showCancelButton, showCancelButton) || other.showCancelButton == showCancelButton)&&(identical(other.buttonCancelText, buttonCancelText) || other.buttonCancelText == buttonCancelText)&&(identical(other.showSuccessMessage, showSuccessMessage) || other.showSuccessMessage == showSuccessMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.successMessageInterval, successMessageInterval) || other.successMessageInterval == successMessageInterval)&&(identical(other.confirmAnswer, confirmAnswer) || other.confirmAnswer == confirmAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buttonText,showCancelButton,buttonCancelText,showSuccessMessage,successMessage,successMessageInterval,confirmAnswer);

@override
String toString() {
  return 'AskParametersModel(buttonText: $buttonText, showCancelButton: $showCancelButton, buttonCancelText: $buttonCancelText, showSuccessMessage: $showSuccessMessage, successMessage: $successMessage, successMessageInterval: $successMessageInterval, confirmAnswer: $confirmAnswer)';
}


}

/// @nodoc
abstract mixin class $AskParametersModelCopyWith<$Res>  {
  factory $AskParametersModelCopyWith(AskParametersModel value, $Res Function(AskParametersModel) _then) = _$AskParametersModelCopyWithImpl;
@useResult
$Res call({
 String buttonText, bool showCancelButton, String buttonCancelText, bool showSuccessMessage, String? successMessage, int successMessageInterval, bool confirmAnswer
});




}
/// @nodoc
class _$AskParametersModelCopyWithImpl<$Res>
    implements $AskParametersModelCopyWith<$Res> {
  _$AskParametersModelCopyWithImpl(this._self, this._then);

  final AskParametersModel _self;
  final $Res Function(AskParametersModel) _then;

/// Create a copy of AskParametersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buttonText = null,Object? showCancelButton = null,Object? buttonCancelText = null,Object? showSuccessMessage = null,Object? successMessage = freezed,Object? successMessageInterval = null,Object? confirmAnswer = null,}) {
  return _then(_self.copyWith(
buttonText: null == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String,showCancelButton: null == showCancelButton ? _self.showCancelButton : showCancelButton // ignore: cast_nullable_to_non_nullable
as bool,buttonCancelText: null == buttonCancelText ? _self.buttonCancelText : buttonCancelText // ignore: cast_nullable_to_non_nullable
as String,showSuccessMessage: null == showSuccessMessage ? _self.showSuccessMessage : showSuccessMessage // ignore: cast_nullable_to_non_nullable
as bool,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessageInterval: null == successMessageInterval ? _self.successMessageInterval : successMessageInterval // ignore: cast_nullable_to_non_nullable
as int,confirmAnswer: null == confirmAnswer ? _self.confirmAnswer : confirmAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AskParametersModel].
extension AskParametersModelPatterns on AskParametersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AskParametersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AskParametersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AskParametersModel value)  $default,){
final _that = this;
switch (_that) {
case _AskParametersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AskParametersModel value)?  $default,){
final _that = this;
switch (_that) {
case _AskParametersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String buttonText,  bool showCancelButton,  String buttonCancelText,  bool showSuccessMessage,  String? successMessage,  int successMessageInterval,  bool confirmAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AskParametersModel() when $default != null:
return $default(_that.buttonText,_that.showCancelButton,_that.buttonCancelText,_that.showSuccessMessage,_that.successMessage,_that.successMessageInterval,_that.confirmAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String buttonText,  bool showCancelButton,  String buttonCancelText,  bool showSuccessMessage,  String? successMessage,  int successMessageInterval,  bool confirmAnswer)  $default,) {final _that = this;
switch (_that) {
case _AskParametersModel():
return $default(_that.buttonText,_that.showCancelButton,_that.buttonCancelText,_that.showSuccessMessage,_that.successMessage,_that.successMessageInterval,_that.confirmAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String buttonText,  bool showCancelButton,  String buttonCancelText,  bool showSuccessMessage,  String? successMessage,  int successMessageInterval,  bool confirmAnswer)?  $default,) {final _that = this;
switch (_that) {
case _AskParametersModel() when $default != null:
return $default(_that.buttonText,_that.showCancelButton,_that.buttonCancelText,_that.showSuccessMessage,_that.successMessage,_that.successMessageInterval,_that.confirmAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AskParametersModel implements AskParametersModel {
  const _AskParametersModel({this.buttonText = 'Confirmar', this.showCancelButton = false, this.buttonCancelText = 'Cancelar', this.showSuccessMessage = false, this.successMessage, this.successMessageInterval = 3000, this.confirmAnswer = false});
  factory _AskParametersModel.fromJson(Map<String, dynamic> json) => _$AskParametersModelFromJson(json);

@override@JsonKey() final  String buttonText;
@override@JsonKey() final  bool showCancelButton;
@override@JsonKey() final  String buttonCancelText;
@override@JsonKey() final  bool showSuccessMessage;
@override final  String? successMessage;
@override@JsonKey() final  int successMessageInterval;
@override@JsonKey() final  bool confirmAnswer;

/// Create a copy of AskParametersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AskParametersModelCopyWith<_AskParametersModel> get copyWith => __$AskParametersModelCopyWithImpl<_AskParametersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AskParametersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AskParametersModel&&(identical(other.buttonText, buttonText) || other.buttonText == buttonText)&&(identical(other.showCancelButton, showCancelButton) || other.showCancelButton == showCancelButton)&&(identical(other.buttonCancelText, buttonCancelText) || other.buttonCancelText == buttonCancelText)&&(identical(other.showSuccessMessage, showSuccessMessage) || other.showSuccessMessage == showSuccessMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.successMessageInterval, successMessageInterval) || other.successMessageInterval == successMessageInterval)&&(identical(other.confirmAnswer, confirmAnswer) || other.confirmAnswer == confirmAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buttonText,showCancelButton,buttonCancelText,showSuccessMessage,successMessage,successMessageInterval,confirmAnswer);

@override
String toString() {
  return 'AskParametersModel(buttonText: $buttonText, showCancelButton: $showCancelButton, buttonCancelText: $buttonCancelText, showSuccessMessage: $showSuccessMessage, successMessage: $successMessage, successMessageInterval: $successMessageInterval, confirmAnswer: $confirmAnswer)';
}


}

/// @nodoc
abstract mixin class _$AskParametersModelCopyWith<$Res> implements $AskParametersModelCopyWith<$Res> {
  factory _$AskParametersModelCopyWith(_AskParametersModel value, $Res Function(_AskParametersModel) _then) = __$AskParametersModelCopyWithImpl;
@override @useResult
$Res call({
 String buttonText, bool showCancelButton, String buttonCancelText, bool showSuccessMessage, String? successMessage, int successMessageInterval, bool confirmAnswer
});




}
/// @nodoc
class __$AskParametersModelCopyWithImpl<$Res>
    implements _$AskParametersModelCopyWith<$Res> {
  __$AskParametersModelCopyWithImpl(this._self, this._then);

  final _AskParametersModel _self;
  final $Res Function(_AskParametersModel) _then;

/// Create a copy of AskParametersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buttonText = null,Object? showCancelButton = null,Object? buttonCancelText = null,Object? showSuccessMessage = null,Object? successMessage = freezed,Object? successMessageInterval = null,Object? confirmAnswer = null,}) {
  return _then(_AskParametersModel(
buttonText: null == buttonText ? _self.buttonText : buttonText // ignore: cast_nullable_to_non_nullable
as String,showCancelButton: null == showCancelButton ? _self.showCancelButton : showCancelButton // ignore: cast_nullable_to_non_nullable
as bool,buttonCancelText: null == buttonCancelText ? _self.buttonCancelText : buttonCancelText // ignore: cast_nullable_to_non_nullable
as String,showSuccessMessage: null == showSuccessMessage ? _self.showSuccessMessage : showSuccessMessage // ignore: cast_nullable_to_non_nullable
as bool,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessageInterval: null == successMessageInterval ? _self.successMessageInterval : successMessageInterval // ignore: cast_nullable_to_non_nullable
as int,confirmAnswer: null == confirmAnswer ? _self.confirmAnswer : confirmAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
