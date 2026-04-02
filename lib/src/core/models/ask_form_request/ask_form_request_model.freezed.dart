// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_form_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AskFormRequestModel {
  AskParametersModel get parameters;
  List<AskQuestionModel> get questions;

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AskFormRequestModelCopyWith<AskFormRequestModel> get copyWith =>
      _$AskFormRequestModelCopyWithImpl<AskFormRequestModel>(
          this as AskFormRequestModel, _$identity);

  /// Serializes this AskFormRequestModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AskFormRequestModel &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, parameters, const DeepCollectionEquality().hash(questions));

  @override
  String toString() {
    return 'AskFormRequestModel(parameters: $parameters, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class $AskFormRequestModelCopyWith<$Res> {
  factory $AskFormRequestModelCopyWith(
          AskFormRequestModel value, $Res Function(AskFormRequestModel) _then) =
      _$AskFormRequestModelCopyWithImpl;
  @useResult
  $Res call({AskParametersModel parameters, List<AskQuestionModel> questions});

  $AskParametersModelCopyWith<$Res> get parameters;
}

/// @nodoc
class _$AskFormRequestModelCopyWithImpl<$Res>
    implements $AskFormRequestModelCopyWith<$Res> {
  _$AskFormRequestModelCopyWithImpl(this._self, this._then);

  final AskFormRequestModel _self;
  final $Res Function(AskFormRequestModel) _then;

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameters = null,
    Object? questions = null,
  }) {
    return _then(_self.copyWith(
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as AskParametersModel,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<AskQuestionModel>,
    ));
  }

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AskParametersModelCopyWith<$Res> get parameters {
    return $AskParametersModelCopyWith<$Res>(_self.parameters, (value) {
      return _then(_self.copyWith(parameters: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AskFormRequestModel].
extension AskFormRequestModelPatterns on AskFormRequestModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AskFormRequestModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AskFormRequestModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AskFormRequestModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            AskParametersModel parameters, List<AskQuestionModel> questions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel() when $default != null:
        return $default(_that.parameters, _that.questions);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            AskParametersModel parameters, List<AskQuestionModel> questions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel():
        return $default(_that.parameters, _that.questions);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            AskParametersModel parameters, List<AskQuestionModel> questions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AskFormRequestModel() when $default != null:
        return $default(_that.parameters, _that.questions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AskFormRequestModel implements AskFormRequestModel {
  const _AskFormRequestModel(
      {required this.parameters,
      required final List<AskQuestionModel> questions})
      : _questions = questions;
  factory _AskFormRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AskFormRequestModelFromJson(json);

  @override
  final AskParametersModel parameters;
  final List<AskQuestionModel> _questions;
  @override
  List<AskQuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AskFormRequestModelCopyWith<_AskFormRequestModel> get copyWith =>
      __$AskFormRequestModelCopyWithImpl<_AskFormRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AskFormRequestModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AskFormRequestModel &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, parameters, const DeepCollectionEquality().hash(_questions));

  @override
  String toString() {
    return 'AskFormRequestModel(parameters: $parameters, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class _$AskFormRequestModelCopyWith<$Res>
    implements $AskFormRequestModelCopyWith<$Res> {
  factory _$AskFormRequestModelCopyWith(_AskFormRequestModel value,
          $Res Function(_AskFormRequestModel) _then) =
      __$AskFormRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call({AskParametersModel parameters, List<AskQuestionModel> questions});

  @override
  $AskParametersModelCopyWith<$Res> get parameters;
}

/// @nodoc
class __$AskFormRequestModelCopyWithImpl<$Res>
    implements _$AskFormRequestModelCopyWith<$Res> {
  __$AskFormRequestModelCopyWithImpl(this._self, this._then);

  final _AskFormRequestModel _self;
  final $Res Function(_AskFormRequestModel) _then;

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parameters = null,
    Object? questions = null,
  }) {
    return _then(_AskFormRequestModel(
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as AskParametersModel,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<AskQuestionModel>,
    ));
  }

  /// Create a copy of AskFormRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AskParametersModelCopyWith<$Res> get parameters {
    return $AskParametersModelCopyWith<$Res>(_self.parameters, (value) {
      return _then(_self.copyWith(parameters: value));
    });
  }
}

// dart format on
