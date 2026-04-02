// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_mutation_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleMutationResponseModel {
  String get message;
  String? get itemId;
  String? get paymentId;

  /// Create a copy of SaleMutationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaleMutationResponseModelCopyWith<SaleMutationResponseModel> get copyWith =>
      _$SaleMutationResponseModelCopyWithImpl<SaleMutationResponseModel>(
          this as SaleMutationResponseModel, _$identity);

  /// Serializes this SaleMutationResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaleMutationResponseModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, itemId, paymentId);

  @override
  String toString() {
    return 'SaleMutationResponseModel(message: $message, itemId: $itemId, paymentId: $paymentId)';
  }
}

/// @nodoc
abstract mixin class $SaleMutationResponseModelCopyWith<$Res> {
  factory $SaleMutationResponseModelCopyWith(SaleMutationResponseModel value,
          $Res Function(SaleMutationResponseModel) _then) =
      _$SaleMutationResponseModelCopyWithImpl;
  @useResult
  $Res call({String message, String? itemId, String? paymentId});
}

/// @nodoc
class _$SaleMutationResponseModelCopyWithImpl<$Res>
    implements $SaleMutationResponseModelCopyWith<$Res> {
  _$SaleMutationResponseModelCopyWithImpl(this._self, this._then);

  final SaleMutationResponseModel _self;
  final $Res Function(SaleMutationResponseModel) _then;

  /// Create a copy of SaleMutationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? itemId = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: freezed == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SaleMutationResponseModel].
extension SaleMutationResponseModelPatterns on SaleMutationResponseModel {
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
    TResult Function(_SaleMutationResponseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel() when $default != null:
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
    TResult Function(_SaleMutationResponseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel():
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
    TResult? Function(_SaleMutationResponseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel() when $default != null:
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
    TResult Function(String message, String? itemId, String? paymentId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel() when $default != null:
        return $default(_that.message, _that.itemId, _that.paymentId);
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
    TResult Function(String message, String? itemId, String? paymentId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel():
        return $default(_that.message, _that.itemId, _that.paymentId);
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
    TResult? Function(String message, String? itemId, String? paymentId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SaleMutationResponseModel() when $default != null:
        return $default(_that.message, _that.itemId, _that.paymentId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SaleMutationResponseModel implements SaleMutationResponseModel {
  const _SaleMutationResponseModel(
      {required this.message, this.itemId, this.paymentId});
  factory _SaleMutationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SaleMutationResponseModelFromJson(json);

  @override
  final String message;
  @override
  final String? itemId;
  @override
  final String? paymentId;

  /// Create a copy of SaleMutationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SaleMutationResponseModelCopyWith<_SaleMutationResponseModel>
      get copyWith =>
          __$SaleMutationResponseModelCopyWithImpl<_SaleMutationResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SaleMutationResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleMutationResponseModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, itemId, paymentId);

  @override
  String toString() {
    return 'SaleMutationResponseModel(message: $message, itemId: $itemId, paymentId: $paymentId)';
  }
}

/// @nodoc
abstract mixin class _$SaleMutationResponseModelCopyWith<$Res>
    implements $SaleMutationResponseModelCopyWith<$Res> {
  factory _$SaleMutationResponseModelCopyWith(_SaleMutationResponseModel value,
          $Res Function(_SaleMutationResponseModel) _then) =
      __$SaleMutationResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call({String message, String? itemId, String? paymentId});
}

/// @nodoc
class __$SaleMutationResponseModelCopyWithImpl<$Res>
    implements _$SaleMutationResponseModelCopyWith<$Res> {
  __$SaleMutationResponseModelCopyWithImpl(this._self, this._then);

  final _SaleMutationResponseModel _self;
  final $Res Function(_SaleMutationResponseModel) _then;

  /// Create a copy of SaleMutationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? itemId = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_SaleMutationResponseModel(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: freezed == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
