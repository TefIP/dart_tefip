// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_single_question_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AskSingleQuestionRequestModel _$AskSingleQuestionRequestModelFromJson(
  Map<String, dynamic> json
) {
    return _AskSingleQuestionModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$AskSingleQuestionRequestModel {

 AskParametersModel get parameters; AskQuestionModel get question;
/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AskSingleQuestionRequestModelCopyWith<AskSingleQuestionRequestModel> get copyWith => _$AskSingleQuestionRequestModelCopyWithImpl<AskSingleQuestionRequestModel>(this as AskSingleQuestionRequestModel, _$identity);

  /// Serializes this AskSingleQuestionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AskSingleQuestionRequestModel&&(identical(other.parameters, parameters) || other.parameters == parameters)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameters,question);

@override
String toString() {
  return 'AskSingleQuestionRequestModel(parameters: $parameters, question: $question)';
}


}

/// @nodoc
abstract mixin class $AskSingleQuestionRequestModelCopyWith<$Res>  {
  factory $AskSingleQuestionRequestModelCopyWith(AskSingleQuestionRequestModel value, $Res Function(AskSingleQuestionRequestModel) _then) = _$AskSingleQuestionRequestModelCopyWithImpl;
@useResult
$Res call({
 AskParametersModel parameters, AskQuestionModel question
});


$AskParametersModelCopyWith<$Res> get parameters;$AskQuestionModelCopyWith<$Res> get question;

}
/// @nodoc
class _$AskSingleQuestionRequestModelCopyWithImpl<$Res>
    implements $AskSingleQuestionRequestModelCopyWith<$Res> {
  _$AskSingleQuestionRequestModelCopyWithImpl(this._self, this._then);

  final AskSingleQuestionRequestModel _self;
  final $Res Function(AskSingleQuestionRequestModel) _then;

/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parameters = null,Object? question = null,}) {
  return _then(_self.copyWith(
parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as AskParametersModel,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as AskQuestionModel,
  ));
}
/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AskParametersModelCopyWith<$Res> get parameters {
  
  return $AskParametersModelCopyWith<$Res>(_self.parameters, (value) {
    return _then(_self.copyWith(parameters: value));
  });
}/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AskQuestionModelCopyWith<$Res> get question {
  
  return $AskQuestionModelCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}


/// Adds pattern-matching-related methods to [AskSingleQuestionRequestModel].
extension AskSingleQuestionRequestModelPatterns on AskSingleQuestionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AskSingleQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AskSingleQuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AskSingleQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _AskSingleQuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AskSingleQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AskSingleQuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AskParametersModel parameters,  AskQuestionModel question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AskSingleQuestionModel() when $default != null:
return $default(_that.parameters,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AskParametersModel parameters,  AskQuestionModel question)  $default,) {final _that = this;
switch (_that) {
case _AskSingleQuestionModel():
return $default(_that.parameters,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AskParametersModel parameters,  AskQuestionModel question)?  $default,) {final _that = this;
switch (_that) {
case _AskSingleQuestionModel() when $default != null:
return $default(_that.parameters,_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AskSingleQuestionModel implements AskSingleQuestionRequestModel {
  const _AskSingleQuestionModel({required this.parameters, required this.question});
  factory _AskSingleQuestionModel.fromJson(Map<String, dynamic> json) => _$AskSingleQuestionModelFromJson(json);

@override final  AskParametersModel parameters;
@override final  AskQuestionModel question;

/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AskSingleQuestionModelCopyWith<_AskSingleQuestionModel> get copyWith => __$AskSingleQuestionModelCopyWithImpl<_AskSingleQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AskSingleQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AskSingleQuestionModel&&(identical(other.parameters, parameters) || other.parameters == parameters)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parameters,question);

@override
String toString() {
  return 'AskSingleQuestionRequestModel(parameters: $parameters, question: $question)';
}


}

/// @nodoc
abstract mixin class _$AskSingleQuestionModelCopyWith<$Res> implements $AskSingleQuestionRequestModelCopyWith<$Res> {
  factory _$AskSingleQuestionModelCopyWith(_AskSingleQuestionModel value, $Res Function(_AskSingleQuestionModel) _then) = __$AskSingleQuestionModelCopyWithImpl;
@override @useResult
$Res call({
 AskParametersModel parameters, AskQuestionModel question
});


@override $AskParametersModelCopyWith<$Res> get parameters;@override $AskQuestionModelCopyWith<$Res> get question;

}
/// @nodoc
class __$AskSingleQuestionModelCopyWithImpl<$Res>
    implements _$AskSingleQuestionModelCopyWith<$Res> {
  __$AskSingleQuestionModelCopyWithImpl(this._self, this._then);

  final _AskSingleQuestionModel _self;
  final $Res Function(_AskSingleQuestionModel) _then;

/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parameters = null,Object? question = null,}) {
  return _then(_AskSingleQuestionModel(
parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as AskParametersModel,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as AskQuestionModel,
  ));
}

/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AskParametersModelCopyWith<$Res> get parameters {
  
  return $AskParametersModelCopyWith<$Res>(_self.parameters, (value) {
    return _then(_self.copyWith(parameters: value));
  });
}/// Create a copy of AskSingleQuestionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AskQuestionModelCopyWith<$Res> get question {
  
  return $AskQuestionModelCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}

// dart format on
