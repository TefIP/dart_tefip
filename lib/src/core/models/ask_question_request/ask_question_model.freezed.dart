// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AskQuestionModel {

 int get id; String? get question; TefIPQuestionType get type; bool get required; int get minLength; int get maxLength; String? get defaultValue; String? get mask; String? get regex; String? get errorMessage; List<AskOptionModel>? get options;
/// Create a copy of AskQuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AskQuestionModelCopyWith<AskQuestionModel> get copyWith => _$AskQuestionModelCopyWithImpl<AskQuestionModel>(this as AskQuestionModel, _$identity);

  /// Serializes this AskQuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AskQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.required, required) || other.required == required)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.mask, mask) || other.mask == mask)&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,type,required,minLength,maxLength,defaultValue,mask,regex,errorMessage,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'AskQuestionModel(id: $id, question: $question, type: $type, required: $required, minLength: $minLength, maxLength: $maxLength, defaultValue: $defaultValue, mask: $mask, regex: $regex, errorMessage: $errorMessage, options: $options)';
}


}

/// @nodoc
abstract mixin class $AskQuestionModelCopyWith<$Res>  {
  factory $AskQuestionModelCopyWith(AskQuestionModel value, $Res Function(AskQuestionModel) _then) = _$AskQuestionModelCopyWithImpl;
@useResult
$Res call({
 int id, String? question, TefIPQuestionType type, bool required, int minLength, int maxLength, String? defaultValue, String? mask, String? regex, String? errorMessage, List<AskOptionModel>? options
});




}
/// @nodoc
class _$AskQuestionModelCopyWithImpl<$Res>
    implements $AskQuestionModelCopyWith<$Res> {
  _$AskQuestionModelCopyWithImpl(this._self, this._then);

  final AskQuestionModel _self;
  final $Res Function(AskQuestionModel) _then;

/// Create a copy of AskQuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = freezed,Object? type = null,Object? required = null,Object? minLength = null,Object? maxLength = null,Object? defaultValue = freezed,Object? mask = freezed,Object? regex = freezed,Object? errorMessage = freezed,Object? options = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPQuestionType,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,minLength: null == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int,maxLength: null == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,mask: freezed == mask ? _self.mask : mask // ignore: cast_nullable_to_non_nullable
as String?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<AskOptionModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AskQuestionModel].
extension AskQuestionModelPatterns on AskQuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AskQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AskQuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AskQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _AskQuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AskQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AskQuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? question,  TefIPQuestionType type,  bool required,  int minLength,  int maxLength,  String? defaultValue,  String? mask,  String? regex,  String? errorMessage,  List<AskOptionModel>? options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AskQuestionModel() when $default != null:
return $default(_that.id,_that.question,_that.type,_that.required,_that.minLength,_that.maxLength,_that.defaultValue,_that.mask,_that.regex,_that.errorMessage,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? question,  TefIPQuestionType type,  bool required,  int minLength,  int maxLength,  String? defaultValue,  String? mask,  String? regex,  String? errorMessage,  List<AskOptionModel>? options)  $default,) {final _that = this;
switch (_that) {
case _AskQuestionModel():
return $default(_that.id,_that.question,_that.type,_that.required,_that.minLength,_that.maxLength,_that.defaultValue,_that.mask,_that.regex,_that.errorMessage,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? question,  TefIPQuestionType type,  bool required,  int minLength,  int maxLength,  String? defaultValue,  String? mask,  String? regex,  String? errorMessage,  List<AskOptionModel>? options)?  $default,) {final _that = this;
switch (_that) {
case _AskQuestionModel() when $default != null:
return $default(_that.id,_that.question,_that.type,_that.required,_that.minLength,_that.maxLength,_that.defaultValue,_that.mask,_that.regex,_that.errorMessage,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AskQuestionModel implements AskQuestionModel {
  const _AskQuestionModel({this.id = 0, this.question, this.type = TefIPQuestionType.text, this.required = false, this.minLength = 0, this.maxLength = 255, this.defaultValue, this.mask, this.regex, this.errorMessage, final  List<AskOptionModel>? options}): _options = options;
  factory _AskQuestionModel.fromJson(Map<String, dynamic> json) => _$AskQuestionModelFromJson(json);

@override@JsonKey() final  int id;
@override final  String? question;
@override@JsonKey() final  TefIPQuestionType type;
@override@JsonKey() final  bool required;
@override@JsonKey() final  int minLength;
@override@JsonKey() final  int maxLength;
@override final  String? defaultValue;
@override final  String? mask;
@override final  String? regex;
@override final  String? errorMessage;
 final  List<AskOptionModel>? _options;
@override List<AskOptionModel>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AskQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AskQuestionModelCopyWith<_AskQuestionModel> get copyWith => __$AskQuestionModelCopyWithImpl<_AskQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AskQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AskQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.type, type) || other.type == type)&&(identical(other.required, required) || other.required == required)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.mask, mask) || other.mask == mask)&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,type,required,minLength,maxLength,defaultValue,mask,regex,errorMessage,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'AskQuestionModel(id: $id, question: $question, type: $type, required: $required, minLength: $minLength, maxLength: $maxLength, defaultValue: $defaultValue, mask: $mask, regex: $regex, errorMessage: $errorMessage, options: $options)';
}


}

/// @nodoc
abstract mixin class _$AskQuestionModelCopyWith<$Res> implements $AskQuestionModelCopyWith<$Res> {
  factory _$AskQuestionModelCopyWith(_AskQuestionModel value, $Res Function(_AskQuestionModel) _then) = __$AskQuestionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? question, TefIPQuestionType type, bool required, int minLength, int maxLength, String? defaultValue, String? mask, String? regex, String? errorMessage, List<AskOptionModel>? options
});




}
/// @nodoc
class __$AskQuestionModelCopyWithImpl<$Res>
    implements _$AskQuestionModelCopyWith<$Res> {
  __$AskQuestionModelCopyWithImpl(this._self, this._then);

  final _AskQuestionModel _self;
  final $Res Function(_AskQuestionModel) _then;

/// Create a copy of AskQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = freezed,Object? type = null,Object? required = null,Object? minLength = null,Object? maxLength = null,Object? defaultValue = freezed,Object? mask = freezed,Object? regex = freezed,Object? errorMessage = freezed,Object? options = freezed,}) {
  return _then(_AskQuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TefIPQuestionType,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,minLength: null == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int,maxLength: null == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as String?,mask: freezed == mask ? _self.mask : mask // ignore: cast_nullable_to_non_nullable
as String?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<AskOptionModel>?,
  ));
}


}

// dart format on
